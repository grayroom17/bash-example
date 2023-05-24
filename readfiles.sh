#!/bin/bash

#читаем весь файл
cat ./LoremIpsum.txt

#читаем весь файл c нумерацией строк
nl ./LoremIpsum.txt

#читаем первые 5 строк(по умолчанию 10)
head -5 ./LoremIpsum.txt

#читаем последние 5 строк(по умолчанию 10)
tail -5 ./LoremIpsum.txt

#читаем построчно. Управление с помощью стрелочек вверх и вниз
less ./LoremIpsum.txt