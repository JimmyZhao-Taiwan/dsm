#!/bin/bash

SOURCE_DIR="/volume1/homes/Jimmy/1091037/takeout"
TARGET_DIR="/volume1/homes/Jimmy/unzip_photo"

cd "$SOURCE_DIR"

for file in *.zip; do
  echo "解壓縮檔案：$file"
  7z x "$file" -o"$TARGET_DIR"

  if [ $? -eq 0 ]; then
    echo "解壓縮成功，刪除壓縮檔案：$file"
    rm "$file"
  else
    echo "解壓縮失敗：$file"
  fi
done
