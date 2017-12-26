FROM node:9.2.0-alpine

EXPOSE 8000
WORKDIR /var/www/app
ENV APP /var/www/app

COPY target/distr.zip /tmp
RUN unzip /tmp/distr.zip -d $APP/ && \
    rm /tmp/*.zip

RUN yarn install && \
    yarn global add babel-cli && \
    yarn global add nodemon;

CMD ["yarn", "start"]
