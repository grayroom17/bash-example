#!/bin/bash

echo "Введите значение для переменной a:"
read a
echo "Введите значение для переменной b:"
read b
c=$((a+b))
echo "a+b=${c}"
