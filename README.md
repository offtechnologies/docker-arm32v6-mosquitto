# Raspberry Pi 1 Mosquitto 1.4.14-r3

[![Build Status](https://travis-ci.org/offtechnologies/docker-arm32v6-mosquitto.svg?branch=master)](travis-ci.org/offtechnologies/docker-arm32v6-mosquitto)
[![This image on DockerHub](https://img.shields.io/docker/pulls/offtechnologies/docker-arm32v6-mosquitto.svg)](https://hub.docker.com/r/offtechnologies/docker-arm32v6-mosquitto/)
[![](https://images.microbadger.com/badges/image/offtechnologies/docker-arm32v6-mosquitto.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-mosquitto "Get your own image badge on microbadger.com")

[offtechurl]: https://offtechnologies.gthub.io

[![offtechnologies](https://offtechnologies.github.io/images/logo150.png)][offtechurl]

Raspberry Pi 1/0 compatible Docker image with Alpine Linux and mosquitto.
### Usage:

```
sudo docker run --name mosquitto -d \
    -p 1883:1883 \
    -p 9001:9001 \
    -v /storage/docker/moquitto:/etc/mosquitto \
    offtechnologies/docker-arm32v6-mosquitto:1.4.14-r3
```
or

```
docker-compose up -d
```
### mosquitto_sub
```
docker run --rm -it \
  --link mosquitto \
  offtechnologies/docker-arm32v6-mosquitto mosquitto_sub -h mosquitto -t '#'
```
### mosquitto_pub
```
docker run --rm -it \
  --link mosquitto \
  offtechnologies/docker-arm32v6-mosquitto mosquitto_pub -h mosquitto -t home/switch/1/on -m "Switch is ON"
```
## 1.0.0 - 2018-02-23
* first release
* Mosquitto 1.4.14-r3
* Custom base image: Alpine Linux arm32v6 ver 3.7 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with Raspbian 4.9.51-1+rpi3 (2017-10-22) armv6l GNU/Linux and Docker v18.02.0-ce
