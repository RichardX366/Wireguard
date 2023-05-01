FROM linuxserver/wireguard
COPY . .
RUN apk add --update --no-cache make gcc pkgconfig libc-dev && make && apk del make gcc pkgconfig libc-dev
CMD /udptunnel -v -s 80 127.0.0.1:51820