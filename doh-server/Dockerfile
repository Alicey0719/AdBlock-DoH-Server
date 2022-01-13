FROM python:3.9.6
WORKDIR /app
SHELL ["/bin/bash", "-c"]

RUN pip install --upgrade pip && \
    pip install pipenv

RUN pipenv install && \
    pip install doh-proxy

