# 1) Start from a small, official Python base image
FROM python:3.11-slim

# 2) Set a working directory inside the container
WORKDIR /app

# 3) Copy only requirements first (better layer caching)
COPY requirements.txt .

# 4) Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5) Copy the rest of the app
COPY . .

# 6) Default command: run the app
CMD ["python", "app.py"]
