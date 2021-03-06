FROM node:11.6.0-alpine
# ENV NODE_ENV production
WORKDIR /usr/src/app

# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../
# COPY . .
# EXPOSE 4000
# CMD npm start

RUN set -ex \
    \
    && npm install -g npm \
    && npm install -g hexo-cli \
    && apk add --no-cach git

CMD /bin/sh
