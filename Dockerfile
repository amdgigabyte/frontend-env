FROM node:alpine

COPY ./favicon.ico /app/favicon.ico

# 安装 alpine 上面的常用软件 , 其他包到这里搜索 https://pkgs.alpinelinux.org/packages
RUN apk add --update curl net-tools zsh git alpine-sdk
# xorg-server-xephyr dwm

# 安装 oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 安装基本的依赖
# 安装常用的 node 模块
RUN npm install -g create-react-app http-server browser-sync
# usage: docker run -it -v `pwd`:/app -w /app -p 5678:5678 --privileged=true frontend-env:0.0.1 http-server -p 5678 -c 0
