# Use the official Python image as a base
FROM python:3.8-slim

# Set a working directory
WORKDIR /app

# Install ffmpeg (needed for audio processing) and Spleeter in a single step
RUN apt-get update && apt-get install -y ffmpeg && \
    pip install spleeter && \
    rm -rf /var/lib/apt/lists/*

# Default command to keep the container running
CMD ["bash"]