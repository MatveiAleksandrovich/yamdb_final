FROM python:3.8.5

WORKDIR /code
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt
RUN pip3 install psycopg2
COPY . .
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
