# STEP 1: Choose a Base Image
# We start with a base image that already has Nginx installed.
# Nginx is a popular, lightweight, and high-performance web server.
# 'alpine' is a very small Linux distribution, making the final image size minimal.
FROM nginx:alpine

# STEP 2: Copy your application files into the image
# The 'COPY' instruction takes files from your local machine (where you build the image)
# and puts them into the image.
# The first '.' refers to your current local directory (the 'AMZ' folder where the Dockerfile is).
# The second '/usr/share/nginx/html' is the default directory where Nginx serves static web content.
# This means your index.html, style.css, and the entire images folder will be placed here.
COPY . /usr/share/nginx/html

# STEP 3: Expose the port (Optional but good practice)
# This instruction informs Docker that the container will listen on the specified network port at runtime.
# Web servers typically listen on port 80 for HTTP traffic.
# 'EXPOSE' is documentation; it doesn't actually publish the port. We'll do that when we run the container.
EXPOSE 80

# STEP 4: Define the command to run when the container starts (Nginx's default command)
# This specifies the command that will be executed when a container is launched from this image.
# For the Nginx base image, the default command is usually to start the Nginx server in the foreground.
# We don't need to specify it explicitly here because `nginx:alpine` already has a default CMD
# that starts Nginx. If we wanted to override it or use a different base image, we would add:
# CMD ["nginx", "-g", "daemon off;"]
# But for now, we can omit it as the base image handles it.