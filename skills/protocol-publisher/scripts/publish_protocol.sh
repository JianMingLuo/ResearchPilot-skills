#!/bin/bash
set -euo pipefail

if [ "${1:-}" = "" ]; then
  echo "usage: publish_protocol.sh <normalized_protocol_path> [reference_docx]"
  exit 1
fi

normalized="$1"
reference_docx="${2:-}"

if [ ! -f "$normalized" ]; then
  echo "normalized protocol not found: $normalized"
  exit 1
fi

base_name="$(basename "$normalized" .md)"
root_dir="$(cd "$(dirname "$normalized")/../.." && pwd)"
published_md_dir="$root_dir/_published/md"
published_docx_dir="$root_dir/_published/docx"

mkdir -p "$published_md_dir" "$published_docx_dir"

published_md="$published_md_dir/${base_name}-human.md"
published_docx="$published_docx_dir/${base_name}-human.docx"

tmp_yaml="$(mktemp /tmp/protocol-yaml-XXXXXX)"
tmp_body="$(mktemp /tmp/protocol-body-XXXXXX)"
tmp_md="$(mktemp /tmp/protocol-md-XXXXXX).md"

awk '
  BEGIN { in_yaml = 0; yaml_done = 0 }
  NR == 1 && $0 == "---" { in_yaml = 1; next }
  in_yaml && $0 == "---" { in_yaml = 0; yaml_done = 1; next }
  in_yaml { print > yaml_file; next }
  yaml_done { print > body_file }
' yaml_file="$tmp_yaml" body_file="$tmp_body" "$normalized"

cat > "$tmp_md" <<EOF
# $(basename "$base_name" | tr '-' ' ')

> Published from normalized protocol source: \`$normalized\`

EOF

cat "$tmp_body" >> "$tmp_md"
cp "$tmp_md" "$published_md"

if command -v pandoc >/dev/null 2>&1; then
  if [ -n "$reference_docx" ] && [ -f "$reference_docx" ]; then
    pandoc "$tmp_md" --reference-doc="$reference_docx" -o "$published_docx"
  else
    pandoc "$tmp_md" -o "$published_docx"
  fi
else
  echo "pandoc not found; markdown published only" >&2
fi

rm -f "$tmp_yaml" "$tmp_body" "$tmp_md"

echo "published_md=$published_md"
if [ -f "$published_docx" ]; then
  echo "published_docx=$published_docx"
fi

