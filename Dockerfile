FROM public.ecr.aws/nginx/nginx:alpine3.18

# Copy the HTML file to the nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]