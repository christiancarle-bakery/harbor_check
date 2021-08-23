FROM alpine
RUN apk add --no-cache curl
COPY . /healthcheck
