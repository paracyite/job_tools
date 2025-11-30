#!/usr/bin/env bash

pandoc base.md \
  --css=resumecss.css \
  --pdf-engine=weasyprint \
  --metadata pagetitle="Louis Pantuso" \
  -o Louis_Pantuso_Resume.pdf

echo "Done! -> LouisPantuso_Resume.pdf created"
