#!/bin/bash

echo "******************************"
echo "******** BUILDING JAR ********"
echo "******************************"

WORKSPACE=/home/juan/JenkinsFromZero/JenkinsFromZero/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-11-alpine "$@"