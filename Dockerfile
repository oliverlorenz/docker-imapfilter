FROM oxys/alpine-docker-cron:latest
RUN apk add --update git lua-dev gcc make openssl-dev pcre-dev g++ && \
    git clone https://github.com/lefcha/imapfilter.git && \
    cd imapfilter && \
    make all && \
    make install
ADD imapfilter.sh /