# Gunakan base image Python yang ringan
FROM python:3.10-alpine

# Atur direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt terlebih dahulu
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file dari folder lokal ke container
COPY . /app/

# Jalankan aplikasi
CMD ["python", "app.py"]
