FROM jenkins/jenkins:lts

# Create directory /var/volume
RUN mkdir /var/volume

# Disable Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy plugins.txt file to /var/volume/
COPY plugins.txt /var/volume

#Install plugins
RUN jenkins-plugin-cli --plugin-file /var/volume/plugins.txt

# Run as root user
USER root

# Upgrade packages
RUN apt upgrade -y

# Install Python 3
RUN apt install python3
