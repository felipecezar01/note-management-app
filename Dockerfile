FROM python:3.9-slim

WORKDIR /app

COPY ./app /app/app
COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
