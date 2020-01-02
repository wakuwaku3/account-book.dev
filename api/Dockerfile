FROM golang:1.11.13-buster

LABEL Name="AccountBook.Web"
LABEL Version="1.0.0"

ENV NODE_ENV=development
ENV REACT_APP_TEST_MOCK_MODE=0
ENV CGO_ENABLED=0
ENV GO111MODULE=on
ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email
ENV CREDENTIALS_FILE_PATH=/firebase-credentials.json
ENV APPLICATION_MODE=DEVELOPMENT
ENV PASSWORD_HASHED_KEY=PASSWORD_HASHED_KEY
ENV JWT_SECRET=JWT_SECRET
ENV SENDGRID_API_KEY=SENDGRID_API_KEY
ENV FRONT_END_URL=FRONT_END_URL

WORKDIR /
ADD ./init.sh init.sh
ADD ./firebase-credentials.json firebase-credentials.json

RUN mkdir -p /account-book.api
VOLUME /go
VOLUME /account-book.api

EXPOSE 8080 8081
CMD ["bash", "/init.sh"]
