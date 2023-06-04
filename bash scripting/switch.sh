#!/bin/bash

echo "Подобно конструкции ветвления switch в ЯП, bash предлагает подобный синтаксис с командой case"

read command

case $command in
execute)
  echo "Execute command was invoked"
  ;;
build)
  echo "Bouild command was invoked"
  ;;
test)
  echo "Test command was invoked"
  ;;
*)
  echo "Unknown command was invoked. Error!"
  exit 2
  ;;
esac

