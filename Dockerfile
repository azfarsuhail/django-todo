FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir django
RUN python manage.py migrate

EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
