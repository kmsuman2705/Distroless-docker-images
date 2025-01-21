FROM gcr.io/distroless/static-debian12:latest

# Install nginx in a separate multi-stage build (nginx is not present in the distroless image)
FROM nginx:alpine

# Copy your custom `index.html` file to the nginx server directory
COPY index.html /usr/share/nginx/html/

# Expose the port nginx will use (80 by default)
EXPOSE 80

# Start nginx to serve the index.html file
CMD ["nginx", "-g", "daemon off;"]

~
