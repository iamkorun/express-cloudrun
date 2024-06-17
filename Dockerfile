FROM node:20-alpine

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# Install production dependencies
RUN npm install --only=production

# Copy local code to the container image
COPY . .

# Expose the port that your app runs on
EXPOSE 8080

# Run the web service on container startup
CMD [ "npm", "start" ]