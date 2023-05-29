#!/bin/bash

touch temp.sh
ls -l temp.sh
echo "Меняем права доступа для пользователя к файлу, убираем все права для группы и other"
chmod u+rwx g-r o-r temp.sh
chmod g-r temp.sh
chmod o-r temp.sh
ls -l temp.sh
rm temp.sh