#!/bin/bash
echo "BUILDING"
docker build -f Dockerfile.nodejs -t andrewstone/nexaadknodejs .
echo "PUSHING TO andrewstone/nexaadknodejs:latest"
echo "if this fails run 'docker login' to log into your account"
docker push andrewstone/nexaadknodejs:latest
command -v alertme && alertme "docker adk + nodejs built"
