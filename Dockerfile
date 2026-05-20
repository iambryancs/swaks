FROM alpine:3.23

LABEL maintainer="John Jetmore <@jetmore>"
LABEL maintainer="Bryan CS <@iambryancs>"

ENV RELEASE=20240103.0

RUN apk add --update perl curl perl-net-ssleay

RUN curl -O https://www.jetmore.org/john/code/swaks/files/swaks-${RELEASE}/swaks

RUN chmod +x ./swaks

ENTRYPOINT ["./swaks"]

CMD ["--help"]
