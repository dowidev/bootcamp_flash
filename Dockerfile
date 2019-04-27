FROM python:3.6.5-alpine

#Set working directory
WORKDIR /code

#Install requirements
COPY ./requirements.txt /code
RUN pip install -r requirements.txt

COPY . /code

CMD ["python", "manage.py"]

