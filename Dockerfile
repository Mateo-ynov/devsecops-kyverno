FROM python:3.12-slim

WORKDIR /app

RUN useradd --system --uid 10001 --create-home appuser

COPY app/main.py /app/main.py

RUN chown -R 10001:10001 /app

USER 10001

EXPOSE 8080

CMD ["python", "main.py"]
