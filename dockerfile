# Use the official Node.js image as the base
FROM node:18.18-alpine

# Create the directory on the node image where our Next.js app will live
RUN mkdir -p /app

# Set /app as the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the /app working directory
COPY package*.json ./

# Install dependencies in /app
RUN npm install

# Copy the rest of our Next.js folder into /app
COPY . .

# Ensure port 8080 is accessible to our system
EXPOSE 3000

# Run the app, as we would via the command line
CMD ["npm", "run", "dev"]
