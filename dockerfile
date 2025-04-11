# Gunakan base image python versi ringan
FROM python:3.10-slim

# Atur direktori kerja di dalam container
WORKDIR /app

# Salin semua file dari folder lokal ke container
COPY . /app

# Install dependencies (kalau ada)
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan aplikasi
CMD ["python", "app.py"]