FROM golang:1.10

WORKDIR /go/src/github.com/liul85/gitops-hello-world/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build .

FROM scratch
COPY --from=0 /go/src/github.com/liul85/gitops-hello-world/gitops-hello-world .
ENTRYPOINT ["/gitops-hello-world"]

