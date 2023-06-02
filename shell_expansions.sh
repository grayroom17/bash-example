#!/bin/bash

echo "Brace expansion позволяет подставлять цифры или буквы в команды shell"
echo "Попробуем создать файлы с именами формата file[1..4]"
touch file{1..4}

echo && echo "Смотрим информацию о файлах"
ls -l file{1,2,3,4}

echo && echo "Выведем на консоль ряд латинских символов от а до g"
echo {a..g}

echo && echo "Удалим ранее созданные файлы"
rm -v file{1..4}

echo && echo "Tilda expansion позволяет подставлять путь до home директории пользователя"
echo "Попробуем создать переменную вида <путь до home директории пользователя>/bash_example"
var=~/bash_example
echo "var=${var}"

echo && echo "Parameter & variable expansion позволяет подставлять значение переменных и параметров (интерполяция)"
echo "Для этого перед переменной необходимо поставить знак $ . Так же хорошим тоном будет оборачивание имени переменно фигурными скобками"
echo "Так же shell позволяет подставлять дефолтное значение если переменная пустая"
echo "var=${var}"
emptyVar=
echo "emptyVar=${emptyVar:=25}"
emptyVar=50
echo "emptyVar=${emptyVar:=25}"

echo && echo "Command expansion позволяет подставлять команды в строки"
echo "The first file in ${PWD} is $(ls | head -n 1)"

echo && echo "Arithmetic expansion позволяет выполнять арифметические операции с переменными"
echo $((5*4/2))

echo && echo "File expansion позволяет работать с именами файлов как с регулярными выражениями"
touch logA logB logCC logD
ls log*
ls log?
ls log[A,F,E,D]
rm log*