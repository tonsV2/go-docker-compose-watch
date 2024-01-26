FROM golang:1.21.6-alpine

WORKDIR /app

RUN go install github.com/go-delve/delve/cmd/dlv@latest

#COPY go.mod go.sum .
COPY go.mod .
RUN go mod download -x

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o main .

ENTRYPOINT ["/go/bin/dlv", "--listen=:2345", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "/app/main"]
