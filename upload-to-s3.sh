#!/bin/bash

RECORDINGS_DIR=$1
BUCKET_NAME=${S3_BUCKET_NAME:-jitsi-recordings-lab}

# Upload tất cả các file bản ghi lên S3
aws s3 cp "$RECORDINGS_DIR" s3://$BUCKET_NAME/ --recursive

# Xóa bản ghi sau khi upload thành công
rm -rf "$RECORDINGS_DIR"
