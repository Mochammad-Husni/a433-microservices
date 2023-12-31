#!/bin/bash
#build Docker image dari berkas Dockerfile(karsajobs)
docker build -t ghcr.io/mochammad-husni/karsajobs:latest .

#login ke GitHub Package
echo $CR_PAT | docker login ghcr.io -u mochammad-husni --password-stdin

#push image ke GitHub Package
docker push ghcr.io/mochammad-husni/karsajobs:latest