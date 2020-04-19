# Docker

[参考:Qiita](https://qiita.com/kurkuru/items/127fa99ef5b2f0288b81)

[コマンドチートシート:Qiita](https://qiita.com/voluntas/items/68c1fd04dd3d507d4083)

## インストール

Mac: [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

`docker version`でバージョンが表示されればインストールOK

```sh
$ docker version
Client: Docker Engine - Community
 Version:           18.09.2
 API version:       1.39
 Go version:        go1.10.8
 Git commit:        6247962
 Built:             Sun Feb 10 04:12:39 2019
 OS/Arch:           darwin/amd64
 Experimental:      false

Server: Docker Engine - Community
 Engine:
  Version:          18.09.2
  API version:      1.39 (minimum version 1.12)
  Go version:       go1.10.6
  Git commit:       6247962
  Built:            Sun Feb 10 04:13:06 2019
  OS/Arch:          linux/amd64
  Experimental:     false
```

## nginxのコンテナを起動させる

```sh
docker run -d -p 80:80 --name {コンテナ名} nginx
```

nginxを80番ポートで起動してくれる。
`docker image`がローカルで見つからない場合は、Docker Hubからpullしてくれる。

### コンテナ一覧を見るとき

```sh
docker container ls
```

`-a`オプションをつけると起動していない状態のコンテナ一覧を見れる

### コンテナを止めるとき

```sh
docker container stop {コンテナ名}
```

### コンテナを起動するとき

```sh
docker container start {コンテナ名}`
```

### コンテナを削除するとき

```sh
docker container rm {コンテナ名}
```

### イメージを削除するとき

```sh
docker image rm {IDもしくは image name}
```
