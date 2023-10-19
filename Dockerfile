FROM golang:1.20-alpine

ENV DATABASE_HOST=
ENV DATABASE_USER=
ENV DATABASE_PASSWORD=
ENV DATABASE_NAME=
ENV DATABASE_PORT=
ENV JWT_KEY=

ADD . /go/src/app
WORKDIR /go/src/app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

CMD go run cmd/app/app.go