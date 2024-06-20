######
# GO IMAGES
######

ARG ENVIRONMENT
FROM golang:1.22
RUN mkdir /app

ADD ./src /app/
WORKDIR /app

ARG PORT
ENV PORT=$PORT

EXPOSE $PORT
RUN go mod download
RUN go build -o main /app/
CMD ["/app/main"]