FROM linuxserver/wireguard
COPY . .
RUN make
CMD /udptunnel -v -s 9999 127.0.0.1:51820