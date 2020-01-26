#!/bin/bash
cd /

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /repo/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/account-book.web.git repo
fi

cd /repo/
npm install
# npm start
sh -c "while :; do sleep 10; done"
