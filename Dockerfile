# Dockerfile to build a flask app

FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 2656

CMD [ "python","app.py"]