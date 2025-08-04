# 1️⃣ Base image
FROM python:3.10-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Install Python dependencies first for caching
COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 4️⃣ Copy the whole application (Python, model, templates, static)
COPY app/ .

# 5️⃣ Expose Flask port
EXPOSE 5000

# 6️⃣ Run the Flask app
CMD ["python", "main.py"]
