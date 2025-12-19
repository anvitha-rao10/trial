FROM python:3.10-slim

WORKDIR /workspace

# Install basic tools
RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# Default shell
CMD ["bash"]
