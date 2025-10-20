# Amazon Clone (Dockerized) 🚀

A simple, static front-end clone of the Amazon homepage. This project is dockerized to demonstrate a basic development workflow, packaging a static website with an Nginx web server into a portable, reproducible container.

![Amazon Clone Screenshot](./images/screenshot.png) 

---

## 🛠️ Technology Stack

* **HTML5**
* **CSS3**
* **Nginx**: Used as the web server inside the Docker container.
* **Docker**: For containerizing the application.

---

## ✅ Prerequisites

Before you begin, ensure you have the following installed on your local machine:

* [Git](https://git-scm.com/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)

---

## 🚀 How to Run Locally

Follow these steps to get the project running on your own machine.

### 1. Clone the Repository

First, clone this repository to your local machine using Git.

```bash
git clone [https://github.com/kshitij2414/amazon_clone_fun_purpose.git](https://github.com/kshitij2414/amazon_clone_fun_purpose.git)
cd amazon_clone_fun_purpose
2. Build the Docker Image
Next, build the Docker image from the Dockerfile. This command packages the website files and the Nginx server into a single image. The -t flag tags the image with a name (<your-dockerhub-username>/<repo-name>).

Bash

docker build -t kshitij2414/amazon_clone_fun_purpose .
3. Run the Docker Container
Now, run a container from the image you just built.

Bash

docker run -d -p 8080:80 --name amazon-clone-app kshitij2414/amazon_clone_fun_purpose
What do these flags mean?

-d: Runs the container in detached mode (in the background).

-p 8080:80: Maps port 8080 on your host machine to port 80 inside the container (where Nginx is listening).

--name amazon-clone-app: Gives your container a memorable name.

4. View in Your Browser
That's it! Open your favorite web browser and navigate to:

➡️ http://localhost:8080

You should see the Amazon clone running live!

🐳 Running Directly from Docker Hub
Because this image is publicly available on Docker Hub, you can run it without even cloning the code! This demonstrates the power of containerization. Just run the following command, and Docker will automatically pull the image and start the container.

Bash

docker run -d -p 8080:80 --name amazon-clone-app kshitij2414/amazon_clone_fun_purpose:latest
Then, simply open your browser to http://localhost:8080.

🧹 Cleanup
Once you are done, you can stop and remove the container with these commands:

Bash

# Stop the running container
docker stop amazon-clone-app

# Remove the container
docker rm amazon-clone-app