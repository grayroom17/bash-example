#!/bin/bash

echo "Смотрим все группы, в который включен текущий пользователь"
groups

echo && echo "Смотрим все группы, в которые включен указанный пользователь(root)"
groups root

echo
touch temp_file.txt
ls -l temp_file.txt
echo "Меняем группу доступа к файлу на wheel"
chgrp wheel temp_file.txt
ls -l temp_file.txt
rm temp_file.txt

