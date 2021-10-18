FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 8000
CMD [ "node", "server.js" ]
The Dockerfile sets up the web app to run on port 8000 and uses the node command to run the server.js file.
