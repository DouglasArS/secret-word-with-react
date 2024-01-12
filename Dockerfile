# Use a base Node.js 20.11 image
FROM node:20.11

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY ./secret-word/package*.json ./

# Install project dependencies
RUN npm install

# Copy all project source code into the container
COPY ./secret-word .

# Build the React application
RUN npm run build

# Expose port 3000 so that the React application can be accessed
EXPOSE 3000

# Command to run the application when the container starts
CMD ["npm", "start"]
