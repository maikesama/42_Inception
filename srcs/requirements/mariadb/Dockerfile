FROM alpine:3.14.4

RUN apk add --no-cache tzdata \
	mysql mysql-client

COPY tools /

ENTRYPOINT [ "sh", "entrypoint.sh" ]
