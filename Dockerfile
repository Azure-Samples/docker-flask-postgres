FROM python:3.6.1

COPY requirements.txt /
RUN pip install -r ./requirements.txt

COPY app/ /app/

WORKDIR /app

ENV FLASK_APP=app.py
CMD flask db upgrade && flask run -h 0.0.0.0 -p 5000