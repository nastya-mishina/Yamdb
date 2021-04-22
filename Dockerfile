FROM python:3.8.5

WORKDIR /code

COPY requirements.txt /code

RUN pip3 install -r requirements.txt

COPY . /code

CMD gunicorn api_yamdb.wsgi:application --bind 178.154.214.43:8000
