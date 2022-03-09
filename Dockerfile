FROM --platform=${TARGETPLATFORM} alpine:latest
ARG TARGETPLATFORM

RUN mkdir /lib64 && \
    ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

CMD /bin/sh
