# Using the official Nginx image from Docker Hub
FROM nginx:latest

# Copy custom index.html to the Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]