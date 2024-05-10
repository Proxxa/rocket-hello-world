FROM rust:alpine AS builder

RUN apk update && \
    apk add binutils build-base ca-certificates \
    curl file g++ gcc libressl-dev make patch \
    postgresql rust sqlite


WORKDIR /usr/src/rocket-hello-world
COPY . .

RUN \
    --mount=type=cache,target=/var/cache/cargo \
    cargo install --path .

FROM alpine:latest
#RUN \
#    --mount=type=cache,target=/var/cache/apt\
#    apt-get update && \
#    apt-get install -y libc-bin && \
#    rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/cargo/bin/rocket-hello-world /usr/local/bin/rocket-hello-world

ENV ROCKET_PROFILE="release"
ENV ROCKET_ADDRESS="0.0.0.0"

EXPOSE 8000

CMD [ "rocket-hello-world" ]
