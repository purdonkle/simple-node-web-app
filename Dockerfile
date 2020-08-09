#Image to build from
FROM node:12.18.3-alpine3.11

# Create the working directory inside the docker image
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle apps source code
COPY . .

# Expose port 8080 on docker daemon
EXPOSE 8080

CMD ["node", "server.js"]