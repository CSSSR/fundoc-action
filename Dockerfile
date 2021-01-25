FROM rust:1.49.0

COPY entrypoint.sh /entrypoint.sh

RUN cargo install fundoc

ENTRYPOINT ["/entrypoint.sh"]
