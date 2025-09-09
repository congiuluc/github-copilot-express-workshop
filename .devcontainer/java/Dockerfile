# Java 21 DevContainer for GitHub Copilot Workshop
FROM mcr.microsoft.com/devcontainers/java:1-21-bookworm

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

# Install Maven
RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz | tar xzf - -C /opt \
    && ln -s /opt/apache-maven-3.9.5 /opt/maven \
    && echo 'export PATH=/opt/maven/bin:$PATH' >> /etc/bash.bashrc

# Install Spring Boot CLI
RUN curl -fsSL https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/3.1.5/spring-boot-cli-3.1.5-bin.tar.gz | tar xzf - -C /opt \
    && ln -s /opt/spring-3.1.5 /opt/spring \
    && echo 'export PATH=/opt/spring/bin:$PATH' >> /etc/bash.bashrc

# Set up workspace
WORKDIR /workspace

# Expose common Spring Boot ports
EXPOSE 8080 8081

# Keep container running
CMD ["sleep", "infinity"]
