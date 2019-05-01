FROM node:alpine

RUN mkdir node

WORKDIR /node

COPY package.json /node

RUN npm install

COPY . /node

EXPOSE 80
CMD [ "node", "index.js" ]
