#!/bin/bash

echo "Bash позволяет использовать конструкции ветвления if-else"
read var
if ((var > 0)); then
  echo "$var is positive"
elif ((var == 0)); then
  echo "$var is zero"
else
  echo "$var is negative"
fi
