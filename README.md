# ICTPRG425 Major Unit Assignment Helper Files

This project contains some helper files for ICTPRG425's Major Unit Assignment.

## Getting Started

Create a database as per the Major Unit Assignment's requirements, and import `import-me.sql`.

## Development

To start the development docker container:

    docker run \
      -p 0.0.0.0:18001:3306 \
      --name ictprg425-db \
      -v $(pwd)/ictprg425-db:/etc/mysql/conf.d \
      -e MYSQL_ROOT_PASSWORD=password \
      -e MYSQL_USER=ictprg425-dev \
      -e MYSQL_PASSWORD=password \
      -e MYSQL_DATABASE=ictprg425_users \
      -d mysql:5.7.20
