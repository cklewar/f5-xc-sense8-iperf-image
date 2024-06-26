FROM alpine:latest

RUN apk add --no-cache iperf3 \
  && adduser -S iperf
USER iperf
EXPOSE 5201/tcp 5201/udp
ENTRYPOINT ["iperf3"]

