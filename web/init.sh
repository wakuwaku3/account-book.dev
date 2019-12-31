#!/bin/bash

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /account-book.web/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/account-book.web.git;
fi

cd /account-book.web/
npm install
npm start
