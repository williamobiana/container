#https://docs.docker.com/engine/reference/commandline/run/

#create docker container without running
#docker create ...

#create and run a container
#docker run ...

#name the container 
#define the image to launch the container

#to run BASH inside it, we have to create a volume in the container
# specify the script in the volume that we want to run 

docker container run -it -v $PWD:/scripts --name testapp ubuntu /bin/bash /scripts/01.sh
