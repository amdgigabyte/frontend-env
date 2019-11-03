# 说明

快速搭建基于 Docker 的前端开发环境

## 构建镜像

`docker build ./ --rm -t frontend-env:0.0.1`

## 运行镜像

`docker run -it -v `pwd`:/app/projects -w /app -p 6001:6789 -p 8080:8080 -p 80:80 --privileged=true frontend-env:0.0.1 http-server`

解释:

-it                       --- 保留交互界面
-v `pwd`:/app/projects    --- 将当前目录映射到 docker 容器的/app/projects 目录下
-w /app                   --- 指定 docker 中的工作目录为 /app
-p portInContainer:portInHost --- 将 docker 容器中的端口映射到宿主机
--privileged=true         --- 指定控制权限
frontend-env:0.0.1        --- 创建容器使用的镜像
http-server               --- 在 docker 容器中运行的命令

## 进入 frontend-env 环境

`docker exec -it CONTAINER_ID COMMAND`
