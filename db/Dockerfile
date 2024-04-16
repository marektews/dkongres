FROM mysql:latest

# hasło root'a
ENV MYSQL_ROOT_PASSWORD=kandzendzonga

# podczas pierwszego uruchomienia twórz pustą bazę danych
ENV MYSQL_DATABASE=kongres

# superuser bazy wskazywanej przez MYSQL_DATABASE
ENV MYSQL_USER=kongres
ENV MYSQL_PASSWORD=kr2024

# inicjowanie bazy odbywa się jednorazowo po pierwszym uruchomieniu serwera
ADD ./initdb /docker-entrypoint-initdb.d

