#!/bin/bash
#сначала необходимо сбилдить и запустить контейнер из корня

echo "Подключаемся к удаленной машине через ssh"
ssh -i ~/.ssh/bash_example_rsa -p 2022 ivan@localhost

echo && echo "Подключаемся к удаленной машине через ssh и выполняем только одну команду"
ssh -i ~/.ssh/bash_example_rsa -p 2022 ivan@localhost "ls -a"

echo "Подключаемся к удаленной машине через ssh в режиме дебага"
ssh -v -i ~/.ssh/bash_example_rsa -p 2022 ivan@localhost