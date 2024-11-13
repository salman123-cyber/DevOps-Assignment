# syntax=docker/dockerfile:1
FROM node:23-alpine3.19
WORKDIR /my-app/

# install app
COPY public/ /my-app/public
COPY src/ /my-app/src
COPY package.json /my-app/

#RUN npm install
RUN npm install -y
RUN npm -v
#Exposing port 3000 for pod to run in Kubernetes
EXPOSE 3000 
# final configuration
CMD ["npm", "start"]
