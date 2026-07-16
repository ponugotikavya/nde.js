FROM node:22-alpine as builder

WORKDIR /app

COPY package.json /app

COPY . . 

RUN npm install

FROM node:22-alpine

COPY --from=builder /app /app

CMD ["npm", "start"]

