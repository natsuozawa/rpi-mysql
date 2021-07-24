# rpi-mysql

Dockerized mysql server ready to deploy on raspberry pi.

This will create a MySQL 5.7 container (which runs on arm32v7, arm64v8, and amd64) with the name rpi_mysql.

# Installation

1. Configure the `MYSQL_ROOT_PASSWORD` environment variable.
2. Place any configurations as .cnf files under `config`. The directory will be mounted to `/etc/mysql/conf.d`.
3. Place any scripts to run inside the container under `scripts`.

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
$ ./connect.sh
```

NOTE: In order to be able to use the shell scripts, add the execution permission.

```
$ sudo chmod +x *.sh
```

# Execute SQL command or script

```
$ docker exec -it rpi_mysql mysql -e <command> -u root -p
$ run_sql /scripts/<path>.sql
```

