From	debian:10

# Update and install wordpress
# install mariadb
RUN apt update
RUN apt install mariadb-server -y

# listen on port 3306
EXPOSE 3306

# start mariadb daemon
CMD ["service", "mysql", "start"]
