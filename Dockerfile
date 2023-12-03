FROM python:3.11

RUN apt-get update && apt-get install -y gcc python3-dev

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py ./
COPY config.py ./

CMD ["python", "./bot.py"]