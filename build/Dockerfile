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

# Install http-server globally to serve static files
RUN npm install -g http-server

# Command to run the app using http-server (serving the current directory)
CMD ["http-server", "build", "-p", "${PORT:-3000}"]
