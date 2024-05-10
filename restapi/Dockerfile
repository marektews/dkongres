# FROM alpine AS devel

# ENV PYTHONUNBUFFERED=1

# RUN apk add --update --no-cache mc python3 pkgconfig bash \
#     py3-pip py3-setuptools py3-wheel py3-cairo \
#     gcc musl-dev mariadb-dev python3-dev

# ADD https://github.com/marektews/pykongres.git /opt/pykongres

# WORKDIR /opt/pykongres
# RUN python3 -m venv venv
# RUN . venv/bin/activate
# RUN pip install --break-system-packages -r requirements.txt



# FROM alpine

# ENV PYTHONUNBUFFERED=1

# RUN apk add --update --no-cache bash mc python3 mysql-client \
#     py3-pip py3-setuptools py3-wheel py3-cairo

# COPY --from=devel /opt/pykongres /opt/pykongres
# COPY --from=devel /usr/lib/python3.11 /usr/lib/python3.11

# WORKDIR /opt/pykongres
# CMD ["flask main.py"]




FROM alpine:edge

ENV PYTHONUNBUFFERED=1

RUN apk add --update --no-cache mc python3 pkgconfig bash \
py3-pip py3-setuptools py3-wheel py3-cairo py3-openpyxl openssl \
py3-flask py3-flask-login py3-flask-sqlalchemy py3-mysqlclient py3-gunicorn
    
RUN apk add --update --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing \
py3-flask-qrcode

RUN pip install --break-system-packages Flask-Mail svglib

ADD https://github.com/marektews/pykongres.git /opt/pykongres

COPY flask-config.py /opt/pykongres/config.py
# COPY gunicorn.conf.py /opt/pykongres/gunicorn.conf.py

EXPOSE 8000/tcp

WORKDIR /opt/pykongres
# CMD ["python", "main.py"]
# CMD ["gunicorn", "-c", "./gunicorn.conf.py"]
CMD ["gunicorn", "-b", "restapi", "main:app"]
