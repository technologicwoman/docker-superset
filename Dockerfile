FROM python:3.7

RUN mkdir /source
COPY . /source
WORKDIR /source

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
