#!/bin/bash

#Сначала покажем что нашли по маске
echo "В каталоге обнаружены следующие файлы:"
ls attachments/photo*.jpg

# Файлы удаляются насовсем, спросим подтверждение на удаление файлов
echo "Вы уверены, что хотите удалить эти файлы ? (y/n)"
read confirmation

# Проверяем подтверждение
if [ "$confirmation" == "y" ]; then
    # Удаляем файлы в каталоге
    rm attachments/photo*.jpg
    echo "Файлы удалены"
else
    echo "Удаление отменено"
fi