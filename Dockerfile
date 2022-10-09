FROM ubuntu:20.04

RUN apt update && \
    apt install -y openvpn

COPY --from=mparvin/socks5-server:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=mparvin/socks5-server:latest /go/src/github.com/serjs/socks5/socks5 / 

EXPOSE 1080/tcp

# Run openvpn --config /etc/openvpn/client.conf --daemon
CMD [ "/usr/sbin/openvpn", "--config", "/etc/openvpn/client.ovpn", "--daemon" ]

ENTRYPOINT [ "/socks5" ]