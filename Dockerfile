# Use minimal nginx to serve static files
FROM nginx:1.27-alpine

# Create app dir and copy static files
WORKDIR /usr/share/nginx/html

# Remove default index page
RUN rm -f /usr/share/nginx/html/*

# Copy project static assets
COPY front.html ./index.html
COPY results.html ./results.html

# Expose port
EXPOSE 80

# Default nginx command
CMD ["nginx", "-g", "daemon off;"]
