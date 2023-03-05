#!/bin/bash

echo "*******************************"
echo "******** PUSHING IMAGE ********"
echo "*******************************"

IMAGE="maven-project"

echo "********** LOGGING IN *********"
docker login -u varelajuanmartin -p $PASS

echo "******** TAGGING IMAGE ********"
docker tag $IMAGE:$BUILD_TAG varelajuanmartin/$IMAGE:$BUILD_TAG

echo "******** PUSHING IMAGE ********"
docker push varelajuanmartin/$IMAGE:$BUILD_TAG
