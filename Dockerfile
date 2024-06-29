FROM node:20.12-bookworm-slim

WORKDIR /var/www

EXPOSE 3000

RUN npm install -g serve

COPY ./www .

USER node

CMD ["serve", "-s", "-p", "3000"]

LABEL maintainer="Grigory GiBi <grixa300@yandex.ru>"