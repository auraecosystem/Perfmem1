# Use an explicit ARM64 platform tag for Apple M4 local hardware performance
FROM --platform=linux/arm64 node:20-bookworm-slim

# Install high-performance native audio encoders
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev

COPY . .
CMD ["node", "audio-processor.js"]
