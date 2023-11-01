FROM golang:1.20-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./
RUN go build -o /hello-world

EXPOSE 8080

CMD ["/hello-world"]