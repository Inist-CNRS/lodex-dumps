FROM node:10

RUN mkdir -p /app/data
WORKDIR /app

# see https://github.com/Inist-CNRS/ezmaster
RUN echo '{ \
  "httpPort": 5000, \
  "configPath": "/app/config.json", \
  "dataPath": "/app/data" \
}' > /etc/ezmaster.json

EXPOSE 5000
COPY data/ /app/data
COPY config.json /app
COPY config2vars /app
COPY downloadData /app
COPY docker-entrypoint.sh /app

RUN npm init -y
RUN npm install serve@11.0.0
RUN npm install shelljs

ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["--daemon", "/app/data"]
