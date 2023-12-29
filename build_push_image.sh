#!/bin/bash
#Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.

docker build -t item-app:v1 . 

#melihat daftar image di lokal
docker images

#mengubah nama image agar sesuai dengan  format github Packages
docker tag item-app:v1 ghcr.io/mochammad-husni/item-app:v1

#login ke Github Packages 
echo $PAT | docker login ghcr.io --username mochammad-husni --password-stdin

#mengunggah image Ke GIthub Packages
docker push ghcr.io/mochammad-husni/item-app:v1