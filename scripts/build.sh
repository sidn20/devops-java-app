#!/bin/bash
mvn clean package
docker build -t sidn20/java-app:latest app/
docker push sidn20/java-app:latest
