FROM linuxserver/wireguard
RUN git clone https://github.com/rfc1036/udptunnel.git && cd udptunnel && make && ./udptunnel -s 999 127.0.0.1/51820 &