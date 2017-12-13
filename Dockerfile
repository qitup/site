FROM node:8.9.3-alpine

RUN mkdir -p /site
WORKDIR /site/

COPY . /site
COPY package.json /site

ENV NODE_ENV production
RUN yarn install --production

CMD ["yarn", "start"]