FROM python:3.11-slim

WORKDIR /backend

RUN apt-get update && apt-get install -y \
    default-mysql-client wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-linux-amd64-v0.6.1.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.6.1.tar.gz \
    && rm dockerize-linux-amd64-v0.6.1.tar.gz

COPY . /backend

RUN pip install --no-cache-dir mysql-connector-python

CMD ["dockerize", "-wait", "tcp://mysql:3306", "-timeout", "30s", "sh", "-c", "python3 db.py && python3 table.py && python3 platform_info.py && tail -f /dev/null"]
