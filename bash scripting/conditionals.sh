#!/bin/bash

echo "В bash нет логического типа данных. Для этих целей используются числа от 0 до 255"
echo "Обычно 0 = true, 1 = false, а остальные числа обозначают статусы исключений и ошибок"
echo "Статус выполнения команды можно посмотреть с помощью \$?"

cat ./shell_expansions.sh | head -n 5
echo $?

echo
cat ./shell_expansions.ssh
echo $?

echo
cat ./arrays.sh | grep "1050"
echo $?

echo
cat ./arrays.sh | grep "666"
echo $?

echo
echo "Для сравнения чисел, строк, файлов и пр используется команда test"
test 10 -lt 5
echo $?
test 10 -lt 15
echo $?
test -f Dockerfile
echo $?
test -d Dockerfile
echo $?

echo
echo "Аналогом команды test для файлов и строк являются двойные квадратные скобочки [[   ]]"
[[ -f Dockerfile ]]
echo $?
[[ -d Dockerfile ]]
echo $?

echo
echo "Аналогом команды test для чисел являются двойные скобочки ((   )), при этом можно использовать обычные знаки сравнения и арифметические операции"
(( 10 < 5 ))
echo $?
(( 10 < 15 ))
echo $?
