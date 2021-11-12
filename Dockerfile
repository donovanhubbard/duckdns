FROM alpine:3.13.6
RUN apk add --no-cache curl
WORKDIR /app
COPY duck.sh .
CMD ["sh","-c","/bin/sh /app/duck.sh"]

