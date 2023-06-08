## arch_os1
## Архитектуры операционных систем. Тема 8. Bash

### Задание №1
Очень часто во время разработки требуются тестовые данные для проверки работоспособности продукта. Текстовые данные генерировать обычно проблем нет. Но как быть с фотографиями? Для этого есть платформы которые предоставляют наборы разных изображений в свободном доступе.
Один из таких источников: https://picsum.photos/800/400
Перейдя по этой ссылке у вас откроется изображение 800 на 400 пикселей, но если вы откроете эту же ссылку в другой вкладке браузера, то откроется совершенно иное изображение.
Ваша задача написать BASH скрипт, которые скачивает набор фотографий(20 штук) в директорию(папку) attachments.
Для того чтобы сохранить фотографию в какой-либо файл – используйте команду curl.
curl https://picsum.photos/800/400 -L > имя_файла
####  Файл к заданию 1: 
[task1.sh](https://github.com/s-getmanov/arch_os1/blob/main/task1.sh)

### Задание №2
Перед релизом продукта тестовые данные нужно удалить. Напишите BASH скрипт, который удаляет загруженные ранее изображения.
####  Файл к заданию 2: 
[task2.sh](https://github.com/s-getmanov/arch_os1/blob/main/task2.sh)