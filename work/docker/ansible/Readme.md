# ansibleサーバー

ansible実行環境

## コンテナ作成

```shell
docker run \
  -itd \
  --name ansible \
  --hostname ansible.rolengrays.org \
  --net demonet \
  --network-alias ansible.rolengrays.org \
  --privileged \
  --volume ~/container:/mnt/host \
  ansible:1.0 \
  /sbin/init
```