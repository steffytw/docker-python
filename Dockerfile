FROM python:3.10-alpine

ADD main.py .

RUN apk update \
    && apk --no-cache add --update gcc libc-dev linux-headers python3-dev musl-dev g++ postgresql-dev && rm -rf /var/cache/apk/*


CMD ["python", "./main.py"]
