FROM rust:1.31

COPY entrypoint.sh /entrypoint.sh

RUN cargo install fundoc

ENTRYPOINT ["/entrypoint.sh"]
