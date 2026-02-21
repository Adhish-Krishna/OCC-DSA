FROM python:3.9-slim

WORKDIR /app

COPY example.py example.py

CMD [ "python", "example.py" ]
