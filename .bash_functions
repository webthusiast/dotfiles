#!/usr/bin/env bash

dim() {
  hs -c 'hs.brightness.set(0)'
}

ocr() {
  screencapture -i /tmp/tesseract.png
  tesseract /tmp/tesseract.png stdout | tr -d '\f' | tr '\n' ' '
}
