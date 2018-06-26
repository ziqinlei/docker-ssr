FROM alpine:3.6

LABEL maintainer="https://github.com/ziqinlei"

ENV SSR_SERVER_PORT 2333
ENV SSR_PASSWORD ziqinlei@gmail.com
ENV SSR_ENCRYTION aes-256-cfb
ENV SSR_PROTOCOL auth_sha1_v4_compatible
ENV SSR_OBFS plain

RUN apk update \
	&& apk --no-cache upgrade \
	&& apk --no-cache add libsodium git python \
	&& cd ~ \
	&& git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git

EXPOSE $SSR_SERVER_PORT

CMD python /root/shadowsocksr/shadowsocks/server.py \
	-p $SSR_SERVER_PORT \
	-k $SSR_PASSWORD \
	-m $SSR_ENCRYTION \
	-O $SSR_PROTOCOL \
	-o $SSR_OBFS
