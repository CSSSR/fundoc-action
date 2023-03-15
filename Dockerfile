FROM rust:1.67

COPY entrypoint.sh /entrypoint.sh

RUN cargo install fundoc --locked

ENTRYPOINT ["/entrypoint.sh"]
