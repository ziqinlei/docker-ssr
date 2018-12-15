#!/bin/bash

docker run --name shadowsocksr -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsocksr:latest
