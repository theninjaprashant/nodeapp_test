FROM node:latest

RUN gpasswd -a jenkins staff

USER jenkins

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
