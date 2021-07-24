# rpi-mysql

Dockerized mysql server ready to deploy on raspberry pi.

This will create a MySQL 5.7 container (which runs on arm32v7, arm64v8, and amd64) with the name rpi_mysql.

# Installation

1. Configure the `MYSQL_ROOT_PASSWORD` environment variable.
2. Place any configurations as .cnf files under `config`. The directory will be mounted to `/etc/mysql/conf.d`.
3. Place any scripts to run inside the container under `scripts`. In order to run a script automatically, place it under `scripts/init`.

Then, run:

```
$ docker build -t rpi_mysql .
$ docker-compose up -d
```

# Start

The docker container automatically restarts upon reboot. (Do not terminate the process before shutdown)

Otherwise, run:

```
$ docker-compose up -d
```

To connect to the mysql instance using the mysql command, run:

```
$ docker exec -it <instance_name> mysql -u root -p
```

(To check the instance name, run `docker ps`)

# Execute SQL command

```
$ docker exec -it <instance_name> mysql -e <command> -u root -p
```

