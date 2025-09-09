# .NET 8 DevContainer for GitHub Copilot Workshop
FROM mcr.microsoft.com/devcontainers/dotnet:1-8.0-bookworm

# Install additional tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        curl \
        git \
        unzip \
        wget \
    && apt-get autoremove -y && apt-get clean -y

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install GitHub CLI
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt update \
    && apt install gh -y

# Install Entity Framework Core tools
RUN dotnet tool install --global dotnet-ef

# Set up workspace
WORKDIR /workspace

# Expose common .NET ports
EXPOSE 5000 5001 7000 7001

# Keep container running
CMD ["sleep", "infinity"]
