# Use Node.js v14 as the base image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Vue.js application
RUN npm run build

# Use NGINX as the base image
FROM nginx:alpine

# Copy the built Vue.js application to the NGINX web root directory
COPY --from=0 /app/dist /usr/share/nginx/html

# Copy the NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the host machine
EXPOSE 80