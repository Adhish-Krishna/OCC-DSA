FROM python:3.8-slim
WORKDIR /app
COPY example.py .
CMD ["python", "example.py"]