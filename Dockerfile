FROM node:16-alpine

ENV NODE_ENV=production

RUN mkdir /app
WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn --production

COPY . .

CMD ["yarn", "start"]
