FROM python:2.7.10-onbuild

WORKDIR /root
ADD application.py application.py
ADD requirements.txt requirements.txt

EXPOSE 8080

CMD uwsgi --http :8080 -s /tmp/uwsgi.sock --module application --callable app