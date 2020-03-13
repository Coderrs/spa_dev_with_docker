# https://medium.com/@xiaolishen/develop-in-docker-a-node-backend-and-a-react-front-end-talking-to-each-other-5c522156f634
FROM node:8.7.0-alpine
RUN mkdir -p /app/yamtratech
WORKDIR /app/yantratech
RUN npx create-react-app
COPY spa_website/package.json /app/yamtratech
COPY spa_website/package-lock.json /app/yamtratech
RUN npm install
COPY spa_website /app/yamtratech
# https://mherman.org/blog/dockerizing-a-react-app/

