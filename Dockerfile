FROM ubuntu

# Install openssh
RUN apt-get update && apt-get install -y openssh-server python3 python3-mysqldb
RUN mkdir -p /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
