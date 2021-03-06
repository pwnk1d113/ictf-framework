#!/bin/bash

set -euo pipefail

REGISTRY_ID="$1"
SERVICE_NAME="$2"

AKEY="$AWS_ACCESS_KEY"
SKEY="$AWS_SECRET_KEY"
REG="$AWS_REGION"

REGISTRY_ENDPOINT="${REGISTRY_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
DOCKER_IMAGE_NAME="${SERVICE_NAME}_scripts"
REPOSITORY_URL="${REGISTRY_ENDPOINT}/${DOCKER_IMAGE_NAME}"

python populate_docker_registry.py "$AKEY" "$SKEY" "$REG" "$REGISTRY_ID" "$REPOSITORY_URL" "$DOCKER_IMAGE_NAME"