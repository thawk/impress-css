#!/usr/bin/env bash
# Time: 2021-09-23 09:55:32

if [[ -z "$1" ]]; then
  echo "need ONE argument: css file name" 1>&2
  exit 1
fi

filename="$1"
bg_color=$(sed -n -e '1,/^\.hljs/d; /^[ \t]*background:[ \t]*\(#[0-9a-fA-F]*\).*/{s//\1/;p;q;}' "$filename")
bg_color=$(sed -n -e '1,/^\.hljs/d; /^[ \t]*background:[ \t]*\(#[0-9a-fA-F]*\).*/{s//\1/;p;q;}' "$filename")

get_color() {
  filename="$1"
  class="$2"
  attr="$3"
  cat "$filename" |
    sed -nE -e "1,/^\.${class}/d; /^[ \t]*${attr}:[ \t]*(#?[[:alnum:]]+).*/{s//\1/;p;q;}"
}

cat <<-EOS
// from $(basename "$filename")
@use 'common' with (
    \$bg-color: $(get_color "$filename" "hljs" "background"),
    \$text-color: $(get_color "$filename" "hljs" "color"),
    \$title-color: $(get_color "$filename" "hljs-title" "color"),
    \$accent-color: $(get_color "$filename" "hljs-keyword" "color"), 
    \$border-color: $(get_color "$filename" "hljs-comment" "color"), 
    \$link-color: $(get_color "$filename" "hljs-link" "color"), 
);
EOS
