📄 README.md

# Simple UBI Web Server Container

This project provides a lightweight web server container built using **Red Hat UBI Minimal Image** and **Apache HTTPD**.  
It serves a basic `index.html` page for quick testing or demonstration purposes.

---

## 🛠️ Files Included

- `Containerfile` — Defines the container image setup.
- `index.html` — Simple webpage served by the container.

---

## 🚀 How to Build the Container Image

Make sure you have **Podman** or **Docker** installed.

# Clone the repository (if not already)
git clone https://github.com/vatsal34272/TCS-Demo.git
cd TCS-Demo

# Build the container image
podman build -t ubi-webserver .
# or
docker build -t ubi-webserver .

▶️ How to Run the Container

# Run the container and expose it on port 8080
podman run -d -p 8080:80 ubi-webserver
# or
docker run -d -p 8080:80 ubi-webserver

Now open your browser and visit:
http://localhost:8080

You should see the web page!

📈 Basic Workflow

flowchart TD

    A[Start]  --> B  [Clone Repository]
    B         --> C  [Build Container Image]
    C         --> D  [Run the Container]
    D         --> E  [Access Webpage on Browser]

📜 Notes

Base Image: registry.access.redhat.com/ubi9/ubi-minimal

Installed Packages: httpd

Default exposed port: 80

Web files location inside container: /var/www/html/

🧹 Clean Up

To stop and remove the container:

# List running containers
podman ps
# or
docker ps

# Stop the container
podman stop <container_id>
# or
docker stop <container_id>

# Remove the container
podman rm <container_id>
# or
docker rm <container_id>

📧 Maintainer
Vatsal Thakor
Linux Rabbit (OPC) Private Limited
Email: vatsal@linuxrabbit.com
