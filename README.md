# docker-ssr

## 使用方法

### 直接使用
```bash
docker pull ziqinlei/shadowsocksr
docker run ziqinlei/shadowsocksr:latest -name shadowsocksr -p 2333:2333
```

### Dockerfile 构建
```bash
git clone https://github.com/ziqinlei/docker-ssr.git
cd docker-ssr
docker build -t shadowsocksr:latest .
sudo docker run -d --name shadowsocksr -p 2333:2333
```
