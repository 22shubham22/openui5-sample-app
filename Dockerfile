FROM alpine:3.14
WORKDIR /usr/app
RUN apk add --update nodejs npm
RUN npm set @sap:registry=https://npm.sap.com
COPY . .
RUN npm install
EXPOSE 8080
CMD ["npm","start"]