# Środowisko do kompilacji projektów Vue.

Ten projekt służy do:
1. stworzenia obrazu dockera z kompletnym środowiskiem do kompilacji projektów Vue systemu odprawy autokarów
2. uruchamiania obrazu, który buduje webroot'a systemu odprawy autokarów

`UWAGA! Komendy docker'a wykonywać wszystko wewnątrz katalogu bierzącego.`

## Budowanie obrazu środowiska

```
docker compose build
```

## Używanie środowiska do kompilacji projektów Vue (tworzenie webroot'a)

Przygotowanie katalogu host-webroot:

```
mkdir ./html
```

Pierwsze uruchomienie (kontener nie istnieje):
```
docker compose up
```

Kolejne uruchomienia:

```
docker compose start
```