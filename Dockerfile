FROM node:18 AS base

WORKDIR /app

COPY . /app

RUN npm i

EXPOSE 5000

CMD ["npm", "start"]