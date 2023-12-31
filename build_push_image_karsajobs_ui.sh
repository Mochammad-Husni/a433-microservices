
#!/bin/bash
#build Docker image dari berkas Dockerfile
docker build -t ghcr.io/mochammad-husni/karsajobs-ui:latest .

#login ke GitHub Package
echo $CR_PAT | docker login ghcr.io -u mochammad-husni --password-stdin

#push image ke GitHub Package
docker push ghcr.io/mochammad-husni/karsajobs-ui:latest