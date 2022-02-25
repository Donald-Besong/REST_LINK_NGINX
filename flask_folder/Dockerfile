FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3-pip python3.7
RUN apt install python3.8-venv
ENV PYTHONDONTRUNBYTECODE 1
ENV PYTHONBUFFERED 1

RUN mkdir /app
COPY ./myproject/ /app

WORKDIR /app
RUN python3 -m venv env3 
RUN . env3/bin/activate && pip3 install -r requirements.txt
EXPOSE 5001

ENV x="hey and hellooooo"

CMD ["env3/bin/python3", "app.py"]
#CMD ["tail", "-f", "/dev/null"]      

