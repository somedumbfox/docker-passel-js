FROM node:latest as build
WORKDIR /
RUN git submodule update --init --recursive
WORKDIR /passel-js/
COPY passel-js/package*.json ./
ENV NODE_ENV=development
RUN npm install
COPY . /
CMD ["npm", "start"]