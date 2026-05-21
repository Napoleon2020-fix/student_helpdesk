FROM rasa/rasa:3.6.20

WORKDIR /app

COPY . /app

USER root

RUN pip install rasa-sdk

EXPOSE 10000

CMD ["rasa", "run", "--enable-api", "--cors", "*", "--host", "0.0.0.0", "--port", "10000"]