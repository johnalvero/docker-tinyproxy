# Tinyproxy Docker Image

This project builds and ships [tinyproxy](https://github.com/tinyproxy/tinyproxy) as a Docker image. Tinyproxy is a a light-weight HTTP/HTTPS proxy daemon for POSIX operating systems . The docker image is based on [Alpine Linux Docker Image](http://gliderlabs.viewdocs.io/docker-alpine/) which provides a tiny base image. The full container is less than 8 megabytes.

If you have any problems with this image please report issues on Github. Pull requests & suggestions are also welcome.

Tinyproxy is built from the latest stable source release. We provide tags for the according tinyproxy version and also a `latest` version pointing to the most recent tag. In case we have to re-release a version we add `_1` or alike to the version, for example `1.8.4_1`.

Note that this image just compiles the default options, no other command line arguments are passed to `configure.

This file should (it is currently not) using the start-script `entry.sh` from [dtgilles/tinyproxy](https://github.com/dtgilles/tinyproxy)

### tinyproxy environment variables

You can change its behavior by changing the following environment variables:

    TODO

Please refer to the tinyproxy help page and the Github repository documentation for more information. 

### Use the pre built image

The pre built image can be downloaded using Docker.

    docker pull zazukoians/tinyproxy


### Build the Docker image by yourself

You can also adjust and build the image according to your needs. Just clone the repository and then execute the build command.

    docker build -t zazukoians/tinyproxy .


### Start the container


#### Start the container and keep control

