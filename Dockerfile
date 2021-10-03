FROM python:3.7-alpine

COPY . /app

WORKDIR /app

RUN pip install flask
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
