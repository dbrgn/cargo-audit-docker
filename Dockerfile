# Install latest cargo-audit
FROM rust:latest
RUN rustc --version && cargo --version
RUN apt-get update && apt-get install -y --no-install-recommends cmake && rm -rf /var/lib/apt/lists/*
RUN cargo install -f cargo-audit
