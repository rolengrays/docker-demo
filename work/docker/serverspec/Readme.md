# serverspecサーバー

serverspec実行環境

## コンテナ作成

```shell
docker run \
  -itd \
  --name spec \
  --hostname spec.rolengrays.org \
  --net demonet \
  --network-alias spec.rolengrays.org \
  --privileged \
  --volume ~/container:/mnt/host \
  spec:1.0 \
  /sbin/init
```