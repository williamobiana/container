#write a dockerfile that can run commands while creating an image and run commands after image is created
#GOAL: diffrence btw RUN & CMD in a dockerfile
#we will run python cowsay

FROM ubuntu:latest 

RUN apt update
RUN apt -y install python3
RUN apt -y install python3-pip
RUN pip3 install cowsay

RUN touch test.py

RUN echo 'import cowsay; cowsay.cow("I am a horse!")' > test.py 

CMD python3 test.py 

