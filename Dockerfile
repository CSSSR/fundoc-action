FROM rust:1.49.0

COPY entrypoint.sh /entrypoint.sh

RUN cargo install fundoc --locked

ENTRYPOINT ["/entrypoint.sh"]
