# docker-glibc-builder

For arm / Raspberry pi

A glibc binary package builder in Docker. Produces a glibc binary package that can be imported into a rootfs to run applications dynamically linked against glibc.

## Usage


```
make build run
```

Build a glibc package based on version 2.26 with a prefix of `/usr/glibc-compat`:

```
docker run --rm -e STDOUT=1 glibc-builder:rpi 2.26 /usr/glibc-compat > glibc-bin.tar.gz
```

You can also keep the container around and copy out the resulting file:

```
docker run --name glibc-binary glibc-builder:rpi 2.26 /usr/glibc-compat
docker cp glibc-binary:/glibc-bin-2.26.tar.gz ./
docker rm glibc-binary
```
