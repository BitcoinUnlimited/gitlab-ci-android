#!/bin/bash
echo "BUILDING"
docker build -t andrewstone/nexaadk .
echo "PUSHING TO andrewstone/nexaadk:latest"
echo "if this fails run 'docker login' to log into your account"
docker push andrewstone/nexaadk:latest
command -v alertme && alertme "docker adk built"
