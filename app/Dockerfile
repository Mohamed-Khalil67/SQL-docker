FROM python:3.6-slim
EXPOSE 5000
WORKDIR /app
RUN apt update && apt install -y netcat
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY app.py /app
# add entrypoint.sh
COPY ./entrypoint.sh .
# run entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]