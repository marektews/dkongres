FROM alpine:edge

ENV PYTHONUNBUFFERED=1

RUN apk add --update --no-cache mc python3 pkgconfig bash \
py3-pip py3-setuptools py3-wheel py3-cairo py3-openpyxl openssl \
py3-flask py3-flask-login py3-flask-sqlalchemy py3-mysqlclient py3-gunicorn
    
RUN apk add --update --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing \
py3-flask-qrcode

RUN pip install --break-system-packages Flask-Mail svglib google-api-python-client google-auth-httplib2 google-auth-oauthlib

ADD https://github.com/marektews/pykongres.git /opt/pykongres

COPY flask-config.py /opt/pykongres/config.py
COPY token.pickle /opt/pykongres/token.pickle
# COPY gunicorn.conf.py /opt/pykongres/gunicorn.conf.py

EXPOSE 8000/tcp

WORKDIR /opt/pykongres
# CMD ["python", "main.py"]
# CMD ["gunicorn", "-c", "./gunicorn.conf.py"]
CMD ["gunicorn", "-b", "restapi", "main:app"]
