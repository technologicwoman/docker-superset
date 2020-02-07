FROM python:3.7

ENV PYTHONUNBUFFERED 1
ENV FLASK_ENV=development
ENV FLASK_APP=superset

RUN mkdir /source
ENV PYTHONPATH=/source
COPY . /source
WORKDIR /source

RUN pip install apache-superset
RUN pip install -r requirements.txt
RUN export FLASK_APP=superset

EXPOSE 8088
# Default superset port
EXPOSE 5000
