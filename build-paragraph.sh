#!/bin/bash

docker build -t centos67-dev -f Dockerfile.centos67 .

docker run --rm -v `pwd`:/output -t centos67-dev /bin/bash /output/build-paragraph-in-docker.sh
