FROM maximhq/bifrost:latest

USER root

RUN apk add --no-cache \
    curl \
    ca-certificates \
    bash \
    nodejs \
    npm \
    python3 \
    py3-pip

# uv installieren
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /app
