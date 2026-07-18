FROM maximhq/bifrost:v1.6.4

USER root

RUN apk add --no-cache \
    curl \
    ca-certificates \
    bash \
    nodejs \
    npm \
    python3 \
    py3-pip \
    tesseract-ocr \
    tesseract-ocr-data-eng \
    tesseract-ocr-data-deu

# uv installieren
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /app
