FROM alpine:3.12
RUN apk --no-cache add dnsmasq-dnssec
RUN apk update && apk add bind-tools
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]