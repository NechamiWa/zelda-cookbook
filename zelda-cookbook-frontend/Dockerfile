FROM node:8.12-alpine

WORKDIR /app

COPY package-lock.json /app
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"] 