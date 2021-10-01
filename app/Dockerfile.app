FROM python:3.6-slim

# set work directory
WORKDIR /user/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install system dependencies
RUN apt update && apt install -y netcat

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /user/src/app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /user/src/app/

# run entrypoint.sh
ENTRYPOINT ["/user/src/app/entrypoint.sh"]
#CMD ["python","./app.py"]