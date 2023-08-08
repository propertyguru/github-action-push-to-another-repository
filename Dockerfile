FROM alpine:latest

RUN apk add --no-cache git git-lfs openssh-client github-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
