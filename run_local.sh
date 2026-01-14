#!/bin/bash

# Run the Cloud Function locally
# Make sure you have installed dependencies: pip install -r requirements.txt

export PORT=8080
export FUNCTION_TARGET=hello_world

functions-framework --target=hello_world --port=$PORT
