# inherit
FROM node:alpine

# copy current directory to /app directory
COPY . /app

# working dir is /app
WORKDIR /app

# execute this command: node app.js
CMD [ "node", "app.js" ]