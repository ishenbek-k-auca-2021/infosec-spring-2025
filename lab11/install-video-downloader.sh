#!/bin/bash

echo "Starting video downloader installation..."

# Ensure script runs with superuser privileges
if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root (use sudo)" 
   exit 1
fi

# Install dependencies
echo "Installing required packages..."
apt update && apt install -y git python3 zip make

# Clone repository using HTTPS instead of SSH
echo "Cloning yt-dlp repository..."
git clone https://github.com/yt-dlp/yt-dlp.git
cd yt-dlp || { echo "Failed to enter yt-dlp directory"; exit 1; }

# Compile the binary
echo "Compiling yt-dlp..."
make

# Move the executable to /usr/local/bin for global access
echo "Moving compiled yt-dlp to /usr/local/bin..."
mv yt-dlp /usr/local/bin/video-downloader

# Clean up
cd ..
rm -rf yt-dlp

echo "Installation complete! You can now use 'video-downloader' command."
