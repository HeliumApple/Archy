FROM python:3.9-alpine

RUN mkdir -p /usr/src/bot
WORKDIR /usr/src/bot

COPY ./src/main.py .
COPY ./src/requirements.txt .
COPY ./src/.env .
COPY ./src/key.json .

RUN pip install -r requirements.txt

CMD [ "python3", "main.py" ]
