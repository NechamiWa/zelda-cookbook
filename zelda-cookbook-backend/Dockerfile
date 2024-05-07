FROM node:12.12.0-alpine

WORKDIR /app

COPY package-lock.json /app
COPY package.json /app

RUN npm install -g knex
RUN npm install --production

COPY . /app

EXPOSE 3000

RUN chmod +x "entrypoint.sh"
ENTRYPOINT [ "./entrypoint.sh" ] 