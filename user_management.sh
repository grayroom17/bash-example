echo "смотрим текущего залогиненого пользователя"
whoami

echo && echo "смотрим super user"
sudo whoami

echo && echo "смотрим уникальный идентификатор текущего пользователя"
id

echo && echo "смотрим всех залогиненых пользователей"
who
users

echo
touch temp_file.txt
ls -l temp_file.txt
echo  "меняем owner'а файла"
sudo chown root temp_file.txt
ls -l temp_file.txt
sudo rm temp_file.txt