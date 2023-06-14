FROM node:18-alpine
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app
COPY . .
RUN npm i
RUN npm cache clean --force

EXPOSE 8080

CMD [ "npm", "run", "start" ]