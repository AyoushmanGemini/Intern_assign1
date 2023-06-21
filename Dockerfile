FROM node:16.20.0-alpine3.18

WORKDIR /PORTFOLIO

COPY package.json .

RUN npm install

COPY . .

CMD ["npm" , "start"]