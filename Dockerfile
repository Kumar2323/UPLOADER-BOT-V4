FROM python:3.9
WORKDIR /app
ENV ENV PYTHONUNBUFFERED=1
COPY pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg
CMD gunicorn app:app & python3 bot.py
