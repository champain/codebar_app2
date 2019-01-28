FROM python:3.7.2-alpine3.8
RUN mkdir /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

WORKDIR /app/mysite
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
