# Use the official Label Studio image
FROM heartexlabs/label-studio:latest

# Set working directory
WORKDIR /label-studio

# Copy custom configuration file into the container
COPY config.json /label-studio/config.json

# Expose the Label Studio port
EXPOSE 80

# Start Label Studio
CMD ["label-studio"]
