FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

COPY . .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
