#Dockerfile
#install Node.js image from docker hub
FROM node:8.11.2

#pre-set container directory
WORKDIR /hello-ci-workflow

#adding app folder to container
ADD . /hello-ci-workflow
RUN npm install

EXPOSE 3000
CMD npm start

