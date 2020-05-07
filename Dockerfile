FROM alpine

LABEL maintainer="sakshithkumar@gmail.com"

RUN apk add --update node.js nodejs-npm 
#RUN=execute command and create layer or instruction then value---RUN creates a new layer
#nodejs-npm=nodejs-node package manager

COPY . /src
#copy= copy code into image as new layer

WORKDIR /src
#workdir is just a metadata no layer is added



RUN npm install
# run npm intstalls all the dependencies listed in json file -- another layer


EXPOSE 8080
#EXPOSE -- metadata

ENTRYPOINT [ "node","./app.js"]
#ENTRYPOINT=default app for image/container--- metadata
