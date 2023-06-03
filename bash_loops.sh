#!/bin/bash

echo "Подобно ЯП bash позволяет применять цикл while-do (цикл выполняется до тех пор пока условие истинно)"

counter=10
while ((counter > 0)); do
  echo "${counter}"
  ((counter--))
done

echo
echo "Противоположно циклу while-do работает цикл until, т.е. цикл выполняется до тех пор пока условие ложно"

until ((counter > 10)); do
  echo "${counter}"
  ((counter++))
done

echo
echo "Подобно ЯП bash позволяет применять цикл for и fori"

array=(0 5 10 15 20 25 30)
for ((i = 0; i < "${#array[@]}"; i++)); do
  echo "element[${i}] = ${array[i]}"
done

for value in "${array[@]}"; do
  echo "Current element: ${value}"
done

touch fileA fileB fileC
files=(fileA fileB fileC fileD)
for file in "${files[@]}"; do
  if [[ -f "${file}" ]]; then
    echo "${file} exists"
  else
    echo "${file} not exists"
    echo "Create this file? y/n"
    read answer
    if [[ "${answer}" = "y" ]]; then
      touch "${file}"
    fi
  fi
done

rm file{A..D}
