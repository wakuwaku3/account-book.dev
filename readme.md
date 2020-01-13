# account-book.dev

account-book の開発環境

## init

```sh
docker-compose up
```

### Desktop Linux の場合

```sh
# 同時にwatch可能なファイルの数を増やす
echo fs.inotify.max_user_watches= 65536 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

### Docker Toolkit を使用する場合

```sh
# docker-machine に ssh 接続する
docker-machine ssh
# 同時にwatch可能なファイルの数を増やす
echo fs.inotify.max_user_watches= 65536 | sudo tee -a /etc/sysctl.conf
sysctl -p
```

### Docker for Mac の場合
```sh
# https://stackoverflow.com/questions/41192680/update-max-map-count-for-elasticsearch-docker-container-mac-host
screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
sysctl -w vm.max_map_count=262144
```

- docker-machine にポートフォワーディングを設定する
  - 127.0.0.1:8080
  - 127.0.0.1:8081
  - 127.0.0.1:3000
  - 127.0.0.1:3001

## env

.env ファイルを記述することで `docker-compose.yml` 内で展開される環境変数を記述できる。(通常の環境変数からは読み取らないのでここに記述する)

### GITHUB_USER_NAME

GitHub にコミットするためのユーザー名

### GITHUB_TOKEN

GitHub にコミットするためのアプリケーショントークン。
トークンにはリポジトリの書き込み権限が必要

### GITHUB_EMAIL

git の email 二設定する値

### PASSWORD_HASHED_KEY

Api で Password を Hash するためのキー

### JWT_SECRET

Api で JWT Token を 生成するためのキー
