#!/bin/bash

#вызываю команду ls, но вывод делаю не в консоль, а в файл output.txt
#1 - это standard output
ls 1>output.txt

#добавляю в конец output.txt новую строку
echo >>output.txt "Новая строка"

#пытаюсь перейти в несуществующую директорию, но ошибку вывожу не в консоль а в файл error.txt
#2 - это standard error
cd asdfasdf/asdfasdfasdf 2>error.txt

#записываю новую ошибку в конец error.txt
cd sfsdfasdf/sfsdfsdfsdf 2>>error.txt

#смотрим в файлы и папки в папке idea, если все ок то результат выполнения пишем в конец output.txt,
#иначе пишем ошибку в конец error.txt
ls .idea/ >>output.txt 2>>error.txt