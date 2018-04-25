FROM node:8.2-alpine

RUN \
apk --no-cache --update add yarn dumb-init && \
rm -rf /var/cache/apk/* /tmp && \
mkdir /tmp && \
chmod 777 /tmp

ENV TEMP=/tmp

ENTRYPOINT ["/usr/bin/dumb-init","--"]
CMD ["echo","duncan"]