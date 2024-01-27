# Node alpine image
FROM node:21.6.0-alpine3.19

# Set up files and dependencies
RUN  apk update && apk upgrade && \
     apk add apache2 --no-cache && \
     apk add apache2-proxy --no-cache && \
     apk add apache2-ssl --no-cache && \
     apk add nano --no-cache && \
     apk add bash --no-cache && \
     apk add curl --no-cache && \
     rm -rf /var/cache/apk/*

# Copy client files
WORKDIR /var/www/localhost/htdocs
COPY ./html/ .
# Copy start script
WORKDIR /
COPY ./start.sh .
RUN chmod +x start.sh
# Copy server files
WORKDIR /app
COPY ./app/ .
RUN npm install

EXPOSE 80 3000

CMD ["/start.sh"]