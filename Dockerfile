FROM linuxserver/wireguard
RUN curl -L https://github.com/wangyu-/udp2raw/releases/download/20230206.0/udp2raw_binaries.tar.gz > udp2raw.tar.gz
RUN tar -xvzf udp2raw.tar.gz udp2raw_arm
CMD /udp2raw_arm -s -l0.0.0.0:9999 -r127.0.0.1:51820 -k"passwd" -a
# COPY . .
# RUN apk add --update --no-cache make gcc pkgconfig libc-dev && make && apk del make gcc pkgconfig libc-dev
# CMD /udptunnel -v -s 0.0.0.0:9999 127.0.0.1:51820