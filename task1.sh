#!/bin/bash

#Проверим наличие аргумента с количеством фотографий для скачивания
#Если есть - то будем качать указанное количество фотографий, если нет - то 20
if [ $# -eq 0 ]; then
  kol=20
else
  kol=$1
fi

#Создадим директорию attachments, если ее нет
if [ ! -d "attachments" ]; then
  mkdir attachments
fi

# У меня сервис picsum.photos заблокирован, но возможно это только мой IP,
# поэтому проверим работоспособность сайта, и если в ответ придет html, 
# это будет означать, что сервис не рабочий и мы будем использовать другой сервис для получения картинок
curl -s https://picsum.photos/800/400 -L > attachments/test_image.jpg 

if file -b --mime-type attachments/test_image.jpg | grep -q html; then
  echo "Сайт picsum.photos заблокирован. Получим данные с сервиса https://loremflickr.com/"
  serv=1
else
  serv=0
fi

#Удалим временный файл
rm attachments/test_image.jpg

for ((i=1; i<=kol; i++))
do
  
  if  [ $serv -eq 1 ]; then
     curl https://loremflickr.com/800/600 -L > attachments/photo_$i.jpg
  else
     curl https://picsum.photos/800/400 -L > attachments/photo_$i.jpg
  fi

done

echo "Скачивание завершено"