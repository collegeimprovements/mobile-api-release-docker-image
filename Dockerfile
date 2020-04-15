FROM alpine:3.9
RUN apk add --update bash openssl libgcc libstdc++ freetds unixodbc inotify-tools \
  && echo "[FreeTDS]" > /etc/odbcinst.ini \
  && echo "Driver=/usr/lib/libtdsodbc.so.0" >> /etc/odbcinst.ini \
  && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app
