FROM node:latest as build
WORKDIR /passel-js/
COPY passel-js/package*.json ./
ENV NODE_ENV=development
RUN npm install
COPY . /
CMD ["npm", "start"]