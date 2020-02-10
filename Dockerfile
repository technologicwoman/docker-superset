FROM python:3.7

RUN mkdir /source
COPY . /source
WORKDIR /source

# If you want change this params build the image with --build-arg flag and set those to the value that you prefer
ARG POSTGRES_PASSWORD=superset
ARG POSTGRES_USER=superset
ARG POSTGRES_DB=superset

ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD
ENV POSTGRES_USER=$POSTGRES_USER
ENV POSTGRES_DB=$POSTGRES_DB

ENV PYTHONPATH=/source
ENV PYTHONUNBUFFERED 1
ENV FLASK_ENV=development
ENV FLASK_APP=superset

RUN pip install --upgrade setuptools pip
RUN pip install psycopg2
RUN pip install apache-superset --ignore-installed PyYAML
RUN pip install -r requirements.txt

EXPOSE 8088
# Default superset port
EXPOSE 5000
