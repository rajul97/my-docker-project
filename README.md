<p align="left">
  <img src="https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png" width="180" alt="Docker Logo" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="[https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/UWTSD_logo.png/220px-UWTSD_logo.png]" width="140" alt="UWTSD Logo" />
</p>

---


# Docker Containerisation — Cloud Engineering Assignment

**ACCA7027 | Cloud Engineering Principles and Practice**  
University of Wales Trinity Saint David  

---

## Student Details

| Field | Details |
|---|---|
| Name | Rajul Gupta |
| Student ID | 2523934 |
| Email | 2523934@student.uwtsd.ac.uk |
| Module | ACCA7027 |
| Lecturer | Renuga Jayakumar |
| Verifier | Nathan Morgan |
| Submission | 28th April 2026 |

---

## About This Project

This repository contains the practical work for the Docker and containerisation section of the ACCA7027 module. The project demonstrates how containerisation works in a cloud environment using Docker, NGINX, and a custom HTML dashboard served through a container.

The web page runs inside a Docker container built from a custom Dockerfile using NGINX as the base image. The project covers building images, running containers, managing persistent storage with volumes, configuring container networking, and publishing to DockerHub.

---

## Project Structure
```
my-docker-project/
|
|-- app/
|   |-- index.html        (dashboard served by NGINX inside container)
|
|-- Dockerfile            (build instructions for the image)
|-- .gitignore
|-- README.md
```

---

## How to Run

Make sure Docker Desktop is installed and running before starting.

Clone the repository:
```bash
git clone https://github.com/rajul97/my-docker-project.git
cd my-docker-project
```

Build the image:
```bash
docker build -t my-web-app:v1 .
```

Run the container:
```bash
docker run -d -p 8080:80 --name my-website my-web-app:v1
```

Open your browser and go to http://localhost:8080

---

## Docker Commands Covered

**Building and running:**
```bash
docker build -t my-web-app:v1 .
docker run -d -p 8080:80 --name my-website my-web-app:v1
docker images
docker ps
```

**Volumes — persistent storage:**
```bash
docker volume create my-data-volume
docker volume ls
docker volume inspect my-data-volume
docker run -d -p 8081:80 --name my-website-volume -v my-data-volume:/usr/share/nginx/html my-web-app:v1
```

**Networks — container communication:**
```bash
docker network create my-network
docker network ls
docker network inspect my-network
docker run -d -p 8082:80 --name my-networked-site --network my-network my-web-app:v1
```

**Publishing to DockerHub:**
```bash
docker login
docker tag my-web-app:v1 rajul971/my-web-app:v1
docker push rajul971/my-web-app:v1
```

---

## Links

DockerHub repository: https://hub.docker.com/repositories/rajul971

GitHub repository: https://github.com/rajul97/my-docker-project

---

## References

[1] Docker Inc. Docker Documentation. Available at: https://docs.docker.com

[2] Merkel, D. (2014). Docker: Lightweight Linux Containers for Consistent Development and Deployment. Linux Journal, 2014(239).

[3] Pahl, C. (2015). Containerisation and the PaaS Cloud. IEEE Cloud Computing, 2(3), pp.24-31.

[4] Turnbull, J. (2014). The Docker Book: Containerization is the New Virtualization. James Turnbull.



