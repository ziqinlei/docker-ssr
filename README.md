# docker-ssr

## 使用方法

### 直接使用
```bash
docker pull ziqinlei/shadowsocksr
docker run --name shadowsorcksr -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsorcksr:latest
```

### Dockerfile 构建
```bash
git clone https://github.com/ziqinlei/docker-ssr.git
cd docker-ssr
docker build -t shadowsocksr:latest .
docker run --name shadowsorcksr -d --restart=always \
  -p 2333:2333 \
  ziqinlei/shadowsorcksr:latest
```
