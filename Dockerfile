FROM linuxserver/wireguard
RUN git clone https://github.com/rfc1036/udptunnel.git && cd udptunnel && make
CMD /udptunnel/udptunnel -v -s 9999 127.0.0.1:51820