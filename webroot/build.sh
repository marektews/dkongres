#!/bin/bash

if [ -d /devel ]; then
    rm -f -r -d /devel/*
else
    mkdir -p /devel
fi

cd /devel
git clone https://github.com/marektews/admlogin.git
git clone https://github.com/marektews/admsra.git
git clone https://github.com/marektews/admsrp.git
git clone https://github.com/marektews/admrja.git
git clone https://github.com/marektews/admpk.git
git clone https://github.com/marektews/monitoring.git
git clone https://github.com/marektews/sra.git
git clone https://github.com/marektews/srp.git
git clone https://github.com/marektews/ia.git
git clone https://github.com/marektews/pk.git
git clone https://github.com/marektews/sektor.git
git clone https://github.com/marektews/scanner.git
git clone https://github.com/marektews/czw.git
git clone https://github.com/marektews/przyjazdy.git

cd /devel/admlogin
npm install --no-fund
npm run build

cd /devel/admsra
npm install --no-fund
npm run build

cd /devel/admsrp
npm install --no-fund
npm run build

cd /devel/admrja
npm install --no-fund
npm run build

cd /devel/admpk
npm install --no-fund
npm run build

cd /devel/monitoring
npm install --no-fund
npm run build


cd /devel/sra
npm install --no-fund
npm run build

cd /devel/srp
npm install --no-fund
npm run build

cd /devel/ia
npm install --no-fund
npm run build

cd /devel/pk
npm install --no-fund
npm run build

cd /devel/sektor
npm install --no-fund
npm run build

cd /devel/scanner
npm install --no-fund
npm run build

cd /devel/czw
npm install --no-fund
npm run build

cd /devel/przyjazdy
npm install --no-fund
npm run build

# kopiowanie do lokalizacji webroot
mkdir -p /webroot/admin/sra
mkdir -p /webroot/admin/srp
mkdir -p /webroot/admin/rja
mkdir -p /webroot/admin/pk
mkdir -p /webroot/admin/monitoring

cp -f -r /devel/admlogin/dist/* /webroot/admin
cp -f -r /devel/admsra/dist/* /webroot/admin/sra
cp -f -r /devel/admsrp/dist/* /webroot/admin/srp
cp -f -r /devel/admrja/dist/* /webroot/admin/rja
cp -f -r /devel/admpk/dist/* /webroot/admin/pk
cp -f -r /devel/monitoring/dist/* /webroot/admin/monitoring

mkdir -p /webroot/sra
mkdir -p /webroot/srp
mkdir -p /webroot/ia
mkdir -p /webroot/pk
mkdir -p /webroot/sektor
mkdir -p /webroot/scanner
mkdir -p /webroot/czw
mkdir -p /webroot/przyjazdy

cp -f -r /devel/sra/dist/* /webroot/sra
cp -f -r /devel/srp/dist/* /webroot/srp
cp -f -r /devel/ia/dist/* /webroot/ia
cp -f -r /devel/pk/dist/* /webroot/pk
cp -f -r /devel/sektor/dist/* /webroot/sektor
cp -f -r /devel/scanner/dist/* /webroot/scanner
cp -f -r /devel/czw/dist/* /webroot/czw
cp -f -r /devel/przyjazdy/dist/* /webroot/przyjazdy
