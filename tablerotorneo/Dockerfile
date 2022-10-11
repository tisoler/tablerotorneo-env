FROM alpine:3.12.1
LABEL Emiliano Nunez <enunez@nimbusnetworks.com>
RUN apk update && apk add nodejs npm && rm -rf /var/cache/apk/*
WORKDIR /app
COPY tablerotorneo/package.json ./
RUN npm install
