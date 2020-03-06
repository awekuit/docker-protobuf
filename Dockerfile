FROM adoptopenjdk/openjdk8:x86_64-alpine-jdk8u212-b03-slim
RUN apk add --update autoconf automake libtool build-base bash ca-certificates openssl && rm -rf /var/cache/apk/* && update-ca-certificates
WORKDIR /root
RUN wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz && tar zvxf protobuf-2.5.0.tar.gz && rm protobuf-2.5.0.tar.gz
WORKDIR /root/protobuf-2.5.0
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
WORKDIR /
