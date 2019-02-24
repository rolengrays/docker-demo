#
# serverspecサーバー
#
FROM base:1.0
MAINTAINER rolengrays

# 必要なツールをインストール
RUN yum install -y \
  git \
  bzip2 \
  gcc \
  make \
  openssl-devel \
  readline-devel \
  zlib-devel

# rbenvインストール
ENV PATH ${PATH}:/root/.rbenv/bin
ENV PATH ${PATH}:/root/.rbenv/shims
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

# rubyインストール
RUN rbenv install -v 2.5.3

# rubyのバージョン選択
RUN rbenv global 2.5.3

# serverspecインストール
RUN gem install serverspec

# spec_helper
COPY ./files/spec_helper.rb /root/spec_helper.rb