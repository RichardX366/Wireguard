FROM linuxserver/wireguard
COPY . .
RUN apk add --update --no-cache make gcc pkgconfig libc-dev && make && apk del make gcc pkgconfig libc-dev
CMD /udptunnel -v -s 0.0.0.0:9999 127.0.0.1:51820