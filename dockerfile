FROM python:3.11
WORKDIR /app

COPY . .
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8048

CMD ["python","manage.py","runserver","192.168.0.85:8048"]