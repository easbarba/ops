FROM node:lts-alpine

ENV APP /usr/src/app

COPY package.json package-lock.json $APP/

WORKDIR $APP/

RUN npm install

COPY . $APP/

CMD ["bin/distro.js", "system"]
