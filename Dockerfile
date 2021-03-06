FROM python:3.7-alpine
COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY src/ /app
EXPOSE 5000
WORKDIR /app
CMD ["python", "app.py"]
