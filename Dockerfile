FROM python:3.7

ADD . /usr/src/app

WORKDIR /usr/src/app
COPY Pipfile ./
COPY Pipfile.lock ./

RUN pip install --no-cache-dir pipenv
RUN pipenv install --system

EXPOSE 8000

CMD exec gunicorn hello_world.wsgi:application --bind 0.0.0.0:8000 --workers 3