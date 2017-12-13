FROM node:8.9.3-alpine

COPY . /site
COPY package.json /site/package.json

WORKDIR /site

ENV NODE_ENV production
RUN yarn install --production

CMD ["yarn","start"]

EXPOSE 3000
