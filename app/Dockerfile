# ---- 1) Base image (Python runtime) ----
FROM python:3.12-slim

# ---- 2) Environment knobs for sane Python behavior ----
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# ---- 3) Set the working directory inside the container ----
WORKDIR /app

# ---- 4) Copy dependency list first (for better layer caching) ----
COPY requirements.txt /app/requirements.txt

# ---- 5) Install Python dependencies inside the image ----
RUN pip install --no-cache-dir -r /app/requirements.txt

# ---- 6) Copy the application source code ----
COPY app.py /app/app.py

# ---- 7) (Optional) Document the port the app listens on ----
EXPOSE 5000

# ---- 8) Default process when the container starts ----
CMD ["python", "app.py"]
