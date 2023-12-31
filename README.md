# MSI Class Project - Web Application Deployment Automation with Docker

## Overview
This project focuses on automating the deployment of a web application for music sharing using Docker. It involves creating a the full-stack application that allows users to register, sign in, upload and download music, as well as delete their uploaded files. The primary goal is to establish a platform for efficient and rapid exchange of audio files. Note that the website is not mobile-friendly yet.

## Team Members
- Jaka Pelko
- Miha Vintar

## Project Components

The project consists of the following key components:

1. **Docker Compose Configuration:**
   - The `docker-compose.yml` file defines the services and their interactions.
   - There are 5 different services implemented.

2. **Docker Volumes:**
   - Volumes are used for Minio file storage and database storage, ensuring data persistence between container restarts.

3. **Multi-stage Builds:**
   - Nginx, express and postgres are compiled by using multistage-builds. The final stage's image is optimized and minimalized by using distroless, alpine images.

4. **Continuous Integration/Continuous Deployment (CI/CD):**
   - A CI/CD pipeline is established to automate the build of nginx image at commit.

## Getting Started
Before proceeding with the steps below, ensure that you have Docker installed on your system as it is a requirement for this project.


1. Clone the repository:

    ```bash
    git clone git@github.com:jakepel03/msi-docker.git
    ```

2. Move to the root directory of the repository:

    ```bash
    cd msi-docker
    ```

3. Run the following command to launch the VM:

    ```bash
    docker compose up -d
    ```

    Wait until containers are started.

4. Once the containers are running, you can access the website on http://localhost

5. If you want to stop and remove the containers, run:

    ```bash
    docker compose down
    ```
    (add `-v` tag if you also want to remove volumes)

