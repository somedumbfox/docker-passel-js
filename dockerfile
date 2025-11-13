FROM node:latest as build
WORKDIR /passel-js/
COPY passel-js/package*.json ./
ENV NODE_ENV=production
ENV TOKEN=useDockerCliToSaveBotToken
ENV TASKINTERVAL=600
ENV SQL=/Data/DB.sqlite
ENV SQLUser=User
ENV SQLPass=Password
RUN npm install
COPY . /
CMD ["npm", "start"]
