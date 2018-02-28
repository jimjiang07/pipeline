FROM node:8.9.4-alpine
RUN apk --no-cache --update add alpine-sdk git python ca-certificates wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.26-r0/glibc-2.26-r0.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.26-r0/glibc-bin-2.26-r0.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.26-r0/glibc-i18n-2.26-r0.apk && \
    apk --no-cache add glibc-bin-2.26-r0.apk glibc-2.26-r0.apk glibc-i18n-2.26-r0.apk && \
    apk --update add iproute2 && \
    rm *.apk

RUN rm -rf /var/lib/apt/lists/*