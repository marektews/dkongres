FROM ubuntu:latest AS devel

RUN apt update && apt -y upgrade
RUN apt install -y mc curl

RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash - 
RUN apt install -y nodejs
RUN npm install -g npm@latest
RUN npm install -g @vue/cli


ADD https://github.com/marektews/admlogin.git /devel/admlogin
ADD https://github.com/marektews/admsra.git /devel/admsra
ADD https://github.com/marektews/admsrp.git /devel/admsrp
ADD https://github.com/marektews/admrja.git /devel/admrja
ADD https://github.com/marektews/admpk.git /devel/admpk
ADD https://github.com/marektews/sra.git /devel/sra
ADD https://github.com/marektews/srp.git /devel/srp
ADD https://github.com/marektews/ia.git /devel/ia
ADD https://github.com/marektews/pk.git /devel/pk
ADD https://github.com/marektews/sektor.git /devel/sektor
ADD https://github.com/marektews/scanner.git /devel/scanner
ADD https://github.com/marektews/monitoring.git /devel/monitoring

WORKDIR /devel/admlogin
RUN npm install
RUN npm run build

WORKDIR /devel/admsra
RUN npm install
RUN npm run build

WORKDIR /devel/admsrp
RUN npm install
RUN npm run build

WORKDIR /devel/admrja
RUN npm install
RUN npm run build

WORKDIR /devel/admpk
RUN npm install
RUN npm run build

WORKDIR /devel/sra
RUN npm install
RUN npm run build

WORKDIR /devel/srp
RUN npm install
RUN npm run build

WORKDIR /devel/ia
RUN npm install
RUN npm run build

WORKDIR /devel/pk
RUN npm install
RUN npm run build

WORKDIR /devel/sektor
RUN npm install
RUN npm run build

WORKDIR /devel/scanner
RUN npm install
RUN npm run build

WORKDIR /devel/monitoring
RUN npm install
RUN npm run build



FROM nginx:latest

EXPOSE 80
EXPOSE 443

COPY --from=devel /devel/admlogin/dist /usr/share/nginx/html/admin
COPY --from=devel /devel/admsra/dist /usr/share/nginx/html/admin/sra
COPY --from=devel /devel/admsrp/dist /usr/share/nginx/html/admin/srp
COPY --from=devel /devel/admrja/dist /usr/share/nginx/html/admin/rja
COPY --from=devel /devel/admpk/dist /usr/share/nginx/html/admin/pk
COPY --from=devel /devel/sra/dist /usr/share/nginx/html/sra
COPY --from=devel /devel/srp/dist /usr/share/nginx/html/srp
COPY --from=devel /devel/ia/dist /usr/share/nginx/html/ia
COPY --from=devel /devel/pk/dist /usr/share/nginx/html/pk
COPY --from=devel /devel/sektor/dist /usr/share/nginx/html/sektor
COPY --from=devel /devel/scanner/dist /usr/share/nginx/html/scanner
COPY --from=devel /devel/monitoring/dist /usr/share/nginx/html/admin/monitoring

# COPY ./nginx.conf /etc/nginx/
# CMD ["nginx"]