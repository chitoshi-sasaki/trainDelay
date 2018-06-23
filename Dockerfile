FROM node:8-alpine
MAINTAINER c-sasaki
ENV NODE_ENV=development
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN npm i @slack/client -g \
    && npm i request -g \
    && npm i dotenv -g \
    && npm i -g
EXPOSE 3000
CMD ["node", "/app/index.js"]