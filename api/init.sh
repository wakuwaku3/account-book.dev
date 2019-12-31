#!/bin/bash

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /account-book.api/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/account-book.api.git;
fi

cd /account-book.api/
go run main.go
