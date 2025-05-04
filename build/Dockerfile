# Use an official Node.js runtime as the base image for serving static files
FROM node:23-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code (HTML, JS, CSS) into the container
COPY . .

# Expose the port the app will run on
EXPOSE ${PORT:-3000}

# Install the latest version of npm
RUN npm install -g npm@11.3.0

# Install browser-sync globally to serve static files
RUN npm install -g browser-sync

# Command to run the app using http-server (serving the current directory)
CMD ["browser-sync", "start", "--server", "build", "--port", "${PORT:-3000}", "--host", "0.0.0.0", "--no-open", "--no-ui"]