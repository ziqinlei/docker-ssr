# docker-ssr

## 使用方法

### 直接使用
```bash
docker pull ziqinlei/shadowsocks
docker run -d --name ssr -p 2333:2333 ziqinlei/shadowsocks:latest
```

### Dockerfile 构建
```bash
git clone https://github.com/ziqinlei/docker-ssr.git
cd docker-ssr
docker build -t shadowsocks:latest .
docker run -d --name ssr -p 2333:2333 shadowsocks:latest
```
