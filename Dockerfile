FROM --platform=linux/amd64 python:3.10

RUN python -m pip install --upgrade pip

ENV PYTHONUNBUFFERED=1

COPY etc/base.txt requirements.txt

RUN python -m pip install -r requirements.txt

RUN python -m pip install gunicorn

EXPOSE 8000

COPY . .