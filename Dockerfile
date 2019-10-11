FROM alpine:3.10
MAINTAINER nsrvs

RUN apk add --update --no-cache openvpn
RUN apk add --update --no-cache bash
RUN apk add --update --no-cache socat


CMD /nsrvs/node_exporter
ENTRYPOINT ["openvpn"]
VOLUME ["/nsrvs"]
