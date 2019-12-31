FROM node:lts-buster

LABEL Name="AccountBook.Web"
LABEL Version="1.0.0"

ENV NODE_ENV=development
ENV REACT_APP_DEV_MOCK_MODE=0
ENV REACT_APP_TEST_MOCK_MODE=0
ENV REACT_APP_PROD_MOCK_MODE=0
ENV REACT_APP_DEV_API_URL=http://localhost:8080
ENV REACT_APP_DEV_API_URL=http://localhost:8080
ENV REACT_APP_DEV_API_URL=http://localhost:8080
ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /account-book.web
VOLUME /account-book.web

EXPOSE 3000
CMD ["bash", "/init.sh"]
