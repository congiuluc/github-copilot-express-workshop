# Python 3.11 DevContainer for GitHub Copilot Workshop
FROM mcr.microsoft.com/devcontainers/python:1-3.11-bookworm

# Install additional tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        curl \
        git \
        unzip \
        wget \
        build-essential \
    && apt-get autoremove -y && apt-get clean -y

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install GitHub CLI
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y

# Install Python packages for FastAPI development
RUN pip install --upgrade pip \
    && pip install \
        fastapi \
        uvicorn[standard] \
        sqlalchemy \
        alembic \
        pytest \
        pytest-asyncio \
        httpx \
        pydantic \
        python-jose[cryptography] \
        python-multipart \
        passlib[bcrypt] \
        python-dotenv

# Set up workspace
WORKDIR /workspace

# Expose common Python/FastAPI ports
EXPOSE 8000 8080

# Keep container running
CMD ["sleep", "infinity"]
