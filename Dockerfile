FROM alpine:3.10.3
ENV REC_SOURCE /dev/sda
ENV OPTIONS fileopt,everything,enable,search
COPY ./entrypoint.sh /entrypoint.sh
RUN apk add testdisk && \
    mkdir /recovery && \
    chmod 0700 /entrypoint.sh
ENTRYPOINT /entrypoint.sh