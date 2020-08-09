#!/bin/bash

echo "Building the docker image as 'node-web-app'"
docker build -t node-web-app .

echo "Running the docker image"
docker run -p 41960:8080 -d node-web-app

echo "Running on http://localhost:41960"
