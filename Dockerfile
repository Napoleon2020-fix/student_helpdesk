FROM rasa/rasa:3.6.20

WORKDIR /app

COPY . /app

USER root

RUN pip install rasa-sdk

CMD ["sh", "-c", "rasa run --enable-api --cors '*' --host 0.0.0.0 --port $PORT --model models"]