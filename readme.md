Step By Step How To Run
-----

1. Create new docker volume for database

        docker volume create --name docker-db

2. Modify .env to use this database configuration:

        DB_CONNECTION=mysql
        DB_HOST=database
        DB_PORT=3306
        DB_DATABASE=docker_database
        DB_USERNAME=root
        DB_PASSWORD=rahasia

3. Copy docker/docker-compose.example.yml to docker/docker-compose.yml
4. Make sure all the volumes path inside docker/docker-compose.yml is correct
5. Run docker environments inside docker directory

        cd docker
        docker-compose up -d

6. The app can be accessed on http://localhost:11003
7. The phpmyadmin can be accessed on http://localhost:11004
8. The mailer can be accessed on http://localhost:11001
9. And if somehow you need to access the database directly it's on http://localhost:10002
10. And if you want to run composer install you can do it buy running this command

        docker run --rm --interactive --tty \
        --volume $PWD:/app \
        composer install

11. If you want to use xdebug you should edit docker-compose.yml value of environment LAN_ADDR inside api-fpm application to your local ip address of your LAN