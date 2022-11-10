#write a script to build a dockerfile

#define base image
echo  FROM python:3.8  >  Dockerfile

#define environment and source directory
echo  ENV SRC_DIR /usr/bin/src/webapp/src  >>  Dockerfile

#copy environment to container
echo  ' COPY * ${SRC_DIR}/ '  >>  Dockerfile

#define working directory
echo  ' WORKDIR ${SRC_DIR} '  >>  Dockerfile

#install flask
echo RUN pip3 install Flask  >>  Dockerfile

#define an output for the container
#https://earthly.dev/blog/python-docker/
echo  ENV PYTHONUNBUFFERED=1  >>  Dockerfile

#run the script
echo  ' CMD ["python", "server.py"] '  >>  Dockerfile


# build the image
docker build -t simple_server .

# run the image on port 8080
docker run -d -p 8000:8000 simple_server