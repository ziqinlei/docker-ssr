#!/bin/bash

docker run --name shadowsocks -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsocks:latest
