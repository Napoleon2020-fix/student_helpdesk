FROM rasa/rasa:3.6.20

WORKDIR /app

COPY . /app

USER root

RUN pip install rasa-sdk

RUN rasa train

CMD ["run", "--enable-api", "--cors", "*", "--port", "10000"]