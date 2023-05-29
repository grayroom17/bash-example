#!/bin/bash

#данная команда показывает в какой директории лежат программы(команды), которые можно вызвать в командной строке
#т.е. прописанные в PATH
which cat ls ln mv cp git docker mkdir echo export

#команда очень похожая на предыдущую
type cat ls ln mv cp git docker mkdir echo export which

#команда очень похожая на первую
whereis cat ls ln mv cp git docker mkdir echo export which

#с помощью данной команды можно отыскать файл по имени или другим признакам
find ~ -name docker-compose
