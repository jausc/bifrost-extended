FROM maximhq/bifrost:v1.4.3

USER root

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    bash \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y \
        nodejs \
        python3 \
        python3-pip \
        python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# uv installieren
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /app
