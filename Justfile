list:
  just --list

# build english version
build-en:
  weasyprint \
    Azat-Murtazin-PHP-Golang-Fullstack-Developer-EN.html \
    Azat-Murtazin-PHP-Golang-Fullstack-Developer-EN.pdf

# build russian version
build-ru:
  weasyprint \
    Azat-Murtazin-PHP-Golang-Fullstack-Developer-RU.html \
    Azat-Murtazin-PHP-Golang-Fullstack-Developer-RU.pdf

# build both CVs
build: build-en build-ru
