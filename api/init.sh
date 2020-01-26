#!/bin/bash
cd /

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /repo/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/account-book.api.git repo
fi

cd /repo/
go build -o dist/main ./main.go
# go run main.go
sh -c "while :; do sleep 10; done"
