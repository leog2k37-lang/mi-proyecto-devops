#!/bin/bash
BUCKET="s3://mi-bucket-devops-leonardo"
echo "Desplegando hacia $BUCKET..."
aws s3 sync . $BUCKET \
  --exclude ".git/*" \
  --exclude "scripts/*" \
  --exclude "README.md" \
  --delete
echo "Listo. URL: http://mi-bucket-devops-leonardo.s3-website-us-east-1.amazonaws.com"
