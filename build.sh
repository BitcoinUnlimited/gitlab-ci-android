#!/bin/bash
echo "BUILDING"
docker build -t andrewstone/nexaadk .
echo "PUSHING TO andrewstone/nexaadk:latest"
docker push andrewstone/nexaadk:latest
command -v alertme && alertme "docker adk built"
