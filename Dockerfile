FROM resin/rpi-raspbian:stretch
MAINTAINER Sasha Gerrand <github+docker-glibc-builder@sgerrand.com>
ENV PREFIX_DIR /usr/glibc-compat
ENV GLIBC_VERSION 2.26
RUN apt-get -q update \
	&& apt-get -qy install build-essential wget openssl gawk
COPY configparams /glibc-build/configparams
COPY builder /builder
ENTRYPOINT ["/builder"]
