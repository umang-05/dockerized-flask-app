# Dockerized Flask + MySQL + Nginx on AWS EC2

This project demonstrates a **3-tier Dockerized web app**:
- **Nginx**: reverse proxy (port 80)
- **Flask**: Python web app (port 5000)
- **MySQL**: database (internal only)

All services are orchestrated with **Docker Compose** and deployed on **AWS EC2**.

## 📂 Project Structure
compose-app/
  app/
    app.py
    requirements.txt
    Dockerfile
  nginx/
    nginx.conf
  docker-compose.yml
  .env (not pushed)

## 🚀 How to Run
1. Clone this repo
2. Create .env file with DB creds
3. Run:
   docker compose up -d --build
4. Visit http://<ec2-ip>

## 🏆 Features
- Reverse proxy with Nginx
- Flask backend with Python
- MySQL persistence (internal, secure)
- Works on AWS EC2

