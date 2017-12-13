FROM node:8.9.3-alpine

COPY . /starter
COPY package.json /starter/package.json

WORKDIR /starter

ENV NODE_ENV production
RUN yarn install --production

CMD ["yarn","start"]

EXPOSE 3000
