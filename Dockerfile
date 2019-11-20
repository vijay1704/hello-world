FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-pip wget  
RUN pip install flask 
COPY . /app
WORKDIR /app
ENTRYPOINT [ "python" ] 
CMD [ "hello.py" ]
