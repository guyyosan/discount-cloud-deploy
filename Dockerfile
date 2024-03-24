FROM node:lts-alpine

WORKDIR /app

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]