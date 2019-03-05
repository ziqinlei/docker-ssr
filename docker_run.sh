#!/bin/bash

docker run --name shadowsocksr -d --restart=always \
  -p 8888:8888 \
  ziqinlei/shadowsocksr:latest
