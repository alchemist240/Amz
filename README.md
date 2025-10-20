# 🛒 Amazon Clone (Dockerized) 🚀

A simple, **static front-end clone** of the Amazon homepage.  
This project is **dockerized** to demonstrate a basic development workflow — packaging a static website with an **Nginx web server** into a **portable, reproducible container**.
Or simply clone and Go live form VS code.Thats the easy appraoch,i am just adding a learning curve.

---

## 🛠️ Technology Stack

- **HTML5**
- **CSS3**
- **Nginx** — used as the web server inside the Docker container.
- **Docker** — for containerizing the application.

---

## ✅ Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Git](https://git-scm.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)

---

## 🚀 How to Run Locally

Follow these steps to get the project running on your machine 👇

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/alchemist240/Amz.git
cd AMZ
```

---

### 2️⃣ Build the Docker Image

Build the Docker image using the provided `Dockerfile`.  
This command packages the website files and the Nginx server into a single image.

```bash
docker build -t kshitij2414/amazon_clone_fun_purpose .
```

**Explanation:**
- `-t` → Tags the image with a name (e.g., `<your-dockerhub-username>/<repo-name>`)

---

### 3️⃣ Run the Docker Container

Run a container from the image you just built.

```bash
docker run -d -p 8080:80 --name amazon-clone-app kshitij2414/amazon_clone_fun_purpose
```

**Flags Explained:**
- `-d` → Runs the container in **detached** mode (in the background)
- `-p 8080:80` → Maps **port 8080** on your host machine to **port 80** inside the container (where Nginx is listening)
- `--name amazon-clone-app` → Assigns a friendly name to your container

---

### 4️⃣ View in Your Browser

That’s it! Open your browser and visit:

👉 **[http://localhost:8080](http://localhost:8080)**

You should now see the **Amazon Clone** running live 🎉

---

## 🐳 Run Directly from Docker Hub

You can also run this project **directly from Docker Hub** without cloning the repository.

```bash
docker run -d -p 8080:80 --name amazon-clone-app kshitij2414/amazon_clone_fun_purpose:latest
```

Then open your browser and visit:

👉 **[http://localhost:8080](http://localhost:8080)**

This demonstrates the **power of containerization** — portable, reproducible, and easy to deploy anywhere!

---

## 🧹 Cleanup

When you’re done, stop and remove the container to free up resources:

```bash
# Stop the running container
docker stop amazon-clone-app

# Remove the container
docker rm amazon-clone-app
```

---

## 📦 Author

**Kshitij Hundre**  
🔗 [GitHub Profile](https://github.com/kshitij2414)

---

⭐ *If you found this project useful, don’t forget to star the repo!* ⭐
