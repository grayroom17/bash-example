#!/bin/bash

echo "Создаем файл конфиг в директории ~/.ssh/"
touch ~/.ssh/config

echo && echo "Открываем этот файл с помощью nono и прописываем следующее:"
echo "Host remote_ssh"
echo "HostName localhost"
echo "Port 2022"
echo "User grayroom "
echo "IdentityFile ~/.ssh/bash_example_rsa"
nano ~/.ssh/config

echo && echo "Теперь к удаленному серверу можно подключить через созданный аллиас remote_ssh"
ssh remote_ssh

echo && echo "Или подключиться и вызвать команду"
ssh remote_ssh "ls -l"

echo && echo "Таким же образом можно копировать файлы через scp"
scp ./LoremIpsum.txt remote_ssh:/home/grayroom/NewLoremIpsum.txt
ssh remote_ssh "ls -l /home/grayroom/"