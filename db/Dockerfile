FROM mysql:latest

# hasło root'a
ENV MYSQL_ROOT_PASSWORD=kandzendzonga

# podczas pierwszego uruchomienia twórz pustą bazę danych
ENV MYSQL_DATABASE=kongres

ADD ./initdb /docker-entrypoint-initdb.d

# RUN mysql -u root -p ${MYSQL_ROOT_PASSWORD} --database=${MYSQL_DATABASE}
# WORKDIR /opt
# COPY . .
# RUN /usr/bin/mysql -u root -p ${MYSQL_ROOT_PASSWORD} < /opt/create.sql
# tej operacji nie da się tu wykonać ponieważ serwer jeszcze nie pracuje
