#!/bin/bash

docker run --name shadowsorcksr -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsorcksr:latest
