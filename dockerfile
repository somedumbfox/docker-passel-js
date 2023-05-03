FROM node:latest as build
RUN git submodule init && git submodule update
WORKDIR /passel-js/
COPY passel-js/package*.json ./
ENV NODE_ENV=development
RUN npm install
COPY . /
CMD ["npm", "start"]