#!/bin/bash

echo "Смотрим ip адрес хоста google.com"
host google.com

echo && echo "Смотрим ip адрес localhost"
host localhost

echo && echo "Смотрим полный путь до хоста google.com"
traceroute google.com

echo && echo "Проверяем доступность хоста на адресе 111.111.111.111"
ping -c 10 -W 5 111.111.111.111

echo && echo "Проверяем доступность хоста google.com"
ping -c 10 -W 10 google.com