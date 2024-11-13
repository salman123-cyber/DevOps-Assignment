# syntax=docker/dockerfile:1
FROM node:23-alpine3.19
WORKDIR /myapp/

# install app
COPY ./myapp/public/ /myapp/public
COPY ./myapp/src/ /myapp/src
COPY ./myapp/package.json /myapp/

#RUN npm install
RUN npm -v
#Exposing port 3000 for pod to run in Kubernetes
EXPOSE 3000 
# final configuration
CMD ["npm", "start"]
