# Use a slim, stable Debian image compiled specifically for your target platform architecture
FROM --platform=$TARGETPLATFORM debian:bookworm-slim

# Install the GNU M4 processing utilities and compiler dependencies natively
RUN apt-get update && apt-get install -y --no-install-recommends \
    m4 \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Establish a functional workplace directory inside the system container
WORKDIR /workspace

# Copy local code configurations into the active Docker environment
COPY . .

# Run the native compilation configuration entrypoint command
CMD ["m4", "script.m4"]
