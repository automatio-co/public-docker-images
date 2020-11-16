FROM prismagraphql/prisma:1.34.8

RUN apk add --no-cache curl && \
    rm -rf /var/cache/apk/* && \
    curl -LJO https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    cp wait-for-it.sh /app/ && \
    chmod +x /wait-for-it.sh

ENTRYPOINT ["/bin/sh","-c","/wait-for-it.sh $DB_HOST:$DB_PORT --timeout=$WAIT_TIMEOUT -- /app/start.sh"]