FROM golang:alpine as go

WORKDIR /app

COPY . .

RUN go mod init hello && go build

FROM scratch
COPY --from=go /app .

CMD ["./hello"]


