#/bin/bash

#
# dockerインストール
#

## 必要なツール類をインストール
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

## yumリポジトリ追加
yum-config-manager \
  --add-repo \
  https://download.docker.com/linux/centos/docker-ce.repo

## dockerインストール
yum install -y \
  docker-ce-18.06.1.ce-3.el7 \
  docker-ce-cli \
  containerd.io

## docker自動起動設定
systemctl enable docker

## docker起動
systemctl start docker

## CentOS7イメージ
docker pull centos:centos7

## Docker Network作成
docker network create --driver bridge demonet