FROM python:alpine

COPY ./src /app
COPY ./requirements.txt /app/

ENV EXPIRE_DATE=2099-12-31
ENV NAME=crack

EXPOSE 5000

WORKDIR /data

RUN pip install --no-cache-dir -U -r /app/requirements.txt

ENTRYPOINT ["python", "/app/jls/server.py"]
