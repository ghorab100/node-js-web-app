FROM node:24-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists) first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]