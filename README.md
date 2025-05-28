ДЗ по Docker
В качестве тестового проекта был выбран - https://github.com/boxfuse/boxfuse-sample-java-war-hello

Сборка образа и запуск контейнера
docker build -t my-java-app .
docker run -d -p 8080:8080 my-java-app

Публикация в Docker Registry
https://hub.docker.com/repository/docker/led98/my-java-app/general
