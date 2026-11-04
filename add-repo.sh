#!/data/data/com.termux/files/usr/bin/sh
set -eu

URL="https://raw.githubusercontent.com/lynxhubeta-cell/seika-oc-apt/main"
PREFIX="${PREFIX:-/data/data/com.termux/files/usr}"

mkdir -p "$PREFIX/etc/apt/sources.list.d"
printf 'deb [trusted=yes] %s ./\n' "$URL" \
  > "$PREFIX/etc/apt/sources.list.d/seika-oc.list"

pkg update
pkg install -y seika-oc
