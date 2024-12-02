FROM ubuntu:latest
RUN apt-get update && apt-get install -y build-essential python3-dev libboost-python-dev libexiv2-dev python3-pip
RUN apt-get update && apt-get install -y libheif-examples
COPY . /app
WORKDIR /app
RUN pip install --break-system-packages -r requirements.txt