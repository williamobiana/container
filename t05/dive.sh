#docker dive is a tool for analyising your docker image, layer contents, and discovering ways to shrink the size of the image.

#install dive
#wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb
#sudo apt install ./dive_0.9.2_linux_amd64.deb

dive build -  <  Dockerfile 

#dive build -t <some-tag> .

#best practice for writing dockerfiles
#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/