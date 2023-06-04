#!/bin/bash

echo && echo "Смотрим мета-информацию о указанном файле"
stat file_meta_data_information.sh

echo && echo "Смотрим тип файла(директория/обычный файл)"
file file_meta_data_information.sh
mkdir "somedir"
file ./somedir
rmdir somedir

echo && echo "Смотрим использование дискового пространства"
du -ha .idea

echo && echo "Меняем даты последнего чтения файла(access), изменения файла(modify), изменения мета-информации(change)"
touch -a file_meta_data_information.sh
stat file_meta_data_information.sh
touch -m file_meta_data_information.sh
stat file_meta_data_information.sh

echo && echo "С помощью команды touch можно создать файл"
touch created_with_touch.txt
stat created_with_touch.txt
rm created_with_touch.txt