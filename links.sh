#!/bin/bash

mkdir "links"

#команда ln позволяет создавать link на файл или директорию
#soft link можно создавать как на файл так и на директорию
#hard link можно создавать только для файлов

#создаю soft link на файл
ln -s ./LoremIpsum.txt ./links/soft_link_to_file.txt
ls -li ./links

#создаю hard link на файл
ln ./LoremIpsum.txt ./links/hard_link_to_file.txt
ls -li ./links

#создаю soft link на директорию
ln -s ./links ./link_to_dir