#!/bin/bash
#сначала необходимо сбилдить и запустить контейнер из корня

echo "Подключаемся к удаленной машине через пароль"
ssh -p 2022 ivan@localhost

echo && echo "Подключаемся к удаленной машине через пароль и выполняем только одну команду"
ssh -p 2022 ivan@localhost "ls -a"