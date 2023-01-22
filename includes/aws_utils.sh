#!/usr/bin/env bash

set -euo pipefail

function list_aws_regions() {
    aws ssm get-parameters-by-path \
        --path /aws/service/global-infrastructure/services/lambda/regions \
        --query 'Parameters[].Value' \
        --output text | tr '[:blank:]' '\n' | \
    grep -v -e ^cn- -e ^us-gov- -e ^me- -e ^af- \
        -e ^ap-east-1 -e ^ap-south-2 -e ^ap-southeast-3 \
        -e ^eu-south- -e ^eu-central-2 | \
    sort -r
}
