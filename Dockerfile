FROM ubuntu:bionic

#Set working directory
WORKDIR /code

#Install requirements
COPY ./requirements.txt /code
RUN pip install -r requirements.txt

COPY . /code

CMD ["python", "manage.py"]

