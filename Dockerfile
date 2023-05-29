FROM ubuntu:latest

##########################################################
# Install openssh-server
RUN apt update && apt install openssh-server sudo -y

##########################################################
# Create a group “dmdev”
RUN groupadd dmdev

##########################################################
# Create a user “ivan”
RUN useradd -d /home/ivan -m -s /bin/bash -g dmdev ivan
# Set default password 123 for user ivan
RUN echo "123\n123" | passwd ivan

##########################################################

# Start SSH service
RUN service ssh start
# Expose docker port 22
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]