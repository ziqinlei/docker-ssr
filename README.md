# docker-ssr


## 须知

| 环境变量名 | 释义 | 默认值 |
| --- | --- | --- |
| `SSR_SERVER_PORT` | 服务器端口 | `2333` |
| `SSR_PASSWORD` | 密码 | `ziqinlei@gmail.com` |
| `SSR_ENCRYTION` | 加密方式 | `aes-256-cfb` |
| `SSR_PROTOCOL` | 协议 | `auth_sha1_v4_compatible` |
| `SSR_OBFS` | 混淆 | `plain` |


* 默认情况下，SSR 账户信息为：

| 名称 | 值 |
| --- | --- |
| IP | 服务器IP |
| 端口 | `2333` |
| 密码 | `ziqinlei@gmail.com` |
| 加密方式 | `aes-256-cfb` |
| 协议 | `auth_sha1_v4_compatible` |
| 混淆 | `plain` |



## 使用方法

### 直接使用
```bash
docker pull ziqinlei/shadowsocksr
docker run --name shadowsocksr -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsocksr:latest
```

### Dockerfile 构建
```bash
git clone https://github.com/ziqinlei/docker-ssr.git
cd docker-ssr
docker build -t shadowsocksr:latest .
docker run --name shadowsocksr -d --restart=always \
  -p 2333:2333 \
  shadowsocksr:latest
```

### 自定义实例
```bash
docker run --name shadowsocksr -d --restart=always \
  -p 8888:2333 \
  -e SSR_PASSWORD=wentibuda \
  -e SSR_ENCRYTION=aes-128-cfb \
  ziqinlei/shadowsocksr:latest
```

此时对应的SSR 账户信息为：

| 名称 | 值 |
| --- | --- |
| IP | 服务器IP |
| 端口 | `8888` |
| 密码 | `wentibuda` |
| 加密方式 | `aes-128-cfb` |
| 协议 | `auth_sha1_v4_compatible` |
| 混淆 | `plain` |
