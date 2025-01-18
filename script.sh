#/bin/sh

search_dir="$HOME/.config"

for entry in "$search_dir"/*; do
  cp -r "$entry" .config/
done
