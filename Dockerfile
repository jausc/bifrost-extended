FROM maximhq/bifrost:latest

USER root

# System dependencies + Node + Python
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y \
        nodejs \
        python3 \
        python3-pip \
        python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# uv installieren (offizieller Installer)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# uv in PATH verfügbar machen
ENV PATH="/root/.local/bin:${PATH}"

# optional: prüfen (kannst du später entfernen)
RUN uv --version && node --version && python3 --version

# optionales working dir
WORKDIR /app
