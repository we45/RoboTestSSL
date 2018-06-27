FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add bash procps drill git coreutils

RUN addgroup testssl
RUN adduser -G testssl -g "testssl user"  -s /bin/bash -D testssl

RUN ln -s /home/testssl/testssl.sh /usr/local/bin/

USER testssl
WORKDIR /home/testssl/

RUN git clone --depth=1 https://github.com/drwetter/testssl.sh.git .
COPY run_testssl.sh /home/testssl/
USER root
RUN chmod +x /home/testssl/run_testssl.sh
ENTRYPOINT ["/home/testssl/run_testssl.sh"]