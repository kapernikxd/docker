# docker
MERN 

#### Чтобы читать MakeFile под Windows
------
1. Установить chocolaty [по ссылке](https://chocolatey.org/install)
2. choco install make


### Заметки по DOCKER
------
***Качаем ноду***
docker pull node

***Создаем image и присваиваем тег***
docker build -t fprod -f Dockerfile.production .

***Спискок image***
docker image ls

***Удаляем image***
docker rmi [imagename]

***Удаляем все images***
docker image prune -a

***Запускаем контейнер***
docker run -d --rm --name fprod -p 80:80 fprod

***Список контейнеро***
docker ps

***Останавливаем контейнер***
docker stop [containername]

***Удаляем контейнер***
docker rm CONTAINER_IDS

***Удаляем все неиспользуемые контейнеры***
docker container prune


### Docker-compose
------
docker-compose -f docker-compose.production.yml up -d

#### Как создать SSH ключ
------
1. ssh-keygen -t rsa
2. pbcopy < ~/.ssh/id_rsa.pub
