FROM ubuntu:20.04

#rootパスワード設定
RUN echo 'root:rootpassws' | chpasswd

#Pythonインストール
#RUN apt-get update && apt install -y python3.9 python3-pip
RUN apt-get update && apt install -y curl

#ユーザ追加
RUN useradd -m -d /home/dev-user -s /bin/bash dev-user
USER dev-user
WORKDIR /home/dev-user
