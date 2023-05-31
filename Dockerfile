FROM ubuntu:latest

##########################################################
# Install openssh-server
RUN apt update && apt install openssh-server sudo -y

##########################################################
# Create a group “customgroup”
RUN groupadd customgroup

##########################################################
# Create a user “ivan”
RUN useradd -d /home/ivan -m -s /bin/bash -g customgroup ivan
# Set default password 123 for user ivan
RUN echo "123\n123" | passwd ivan

##########################################################
# Create a user “grayroom”
RUN useradd -d /home/grayroom/ -m -s /bin/bash -g customgroup grayroom
# Create .ssh directory in grayroom home directory
RUN mkdir -p /home/grayroom/.ssh
# Copy the ssh public key in the authorized_keys file.
# The id_rsa.pub below is a public key file you get from ssh-keygen.
# They are under ~/.ssh directory by default.
COPY bash_example_rsa.pub /home/grayroom/.ssh/authorized_keys
# change ownership of the key file.
RUN chown grayroom /home/grayroom/.ssh/authorized_keys && chgrp customgroup /home/grayroom/.ssh/authorized_keys && chmod 640 /home/grayroom/.ssh/authorized_keys

##########################################################
# Start SSH service
RUN service ssh start
# Expose docker port 22
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]