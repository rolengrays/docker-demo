# CentOS7基礎

基本的なツール類をインストールしたCentOS7イメージ

## コンテナ作成

```shell
docker run \
  -itd \
  --name base \
  --hostname base.rolengrays.org \
  --net demonet \
  --network-alias base.rolengrays.org \
  --privileged \
  --volume ~/work/container:/mnt/host \
  base:1.0 \
  /sbin/init
```