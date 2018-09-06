FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN apk update && apk add git
RUN git clone https://github.com/lagtukov/nipv.git
EXPOSE 5000

CMD python ./nipv/index.py
