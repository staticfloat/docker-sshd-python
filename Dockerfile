FROM ubuntu

# Install openssh
RUN apt-get update && apt-get install -y openssh-server python3 python3-mysqldb
RUN mkdir -p /var/run/sshd

# Entrypoint sources user scripts in /docker-entrypoint.d
COPY docker-entrypoint.d /docker-entrypoint.d
COPY entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
