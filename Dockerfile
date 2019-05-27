FROM jenkins/jenkins:lts
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

RUN mkdir /var/jenkins_home/casc_configs
COPY jenkins-config/* /var/jenkins_home/casc_configs/

ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs/
