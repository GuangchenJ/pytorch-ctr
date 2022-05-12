# 使用 NVIDIA Container Toolkit 构建 Pytorch 开发环境的例子

使用方法：

- 声明用于 ssh 链接的密码

```shell
export pwd="ur password"
```

- 构建镜像

```shell
docker compose build
```

- 运行镜像

```shell
docker compose up -d
```

- 关闭镜像

```shell
docker compose down --rmi all
```

> 不想删除镜像的可以去掉 `--rmi all`

## 使用 GitHub workflow 构建并发布镜像

去这里看下 [tf-compose](https://github.com/GuangchenJ/tf-compose)
