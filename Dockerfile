FROM python:3.12-slim

WORKDIR /app

RUN pip install uv

RUN uv venv

RUN uv pip install --system pandas numpy matplotlib

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
