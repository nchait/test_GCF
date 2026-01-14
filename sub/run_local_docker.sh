#!/bin/bash

# Run the Cloud Function locally using Docker
# This tests the Dockerfile before deploying

docker build -t local-cloud-function .
docker run -p 8080:8080 local-cloud-function
