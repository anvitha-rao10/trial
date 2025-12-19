FROM python:3.10-slim

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip

CMD ["bash"]
