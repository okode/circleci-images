FROM circleci/openjdk

MAINTAINER Okode <info@okode.com>

# Install SonarQube Scanner
ARG SONARQUBE_SCANNER_VERSION=3.0.3.778
RUN sudo curl -L https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip > /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN sudo unzip /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip -d /tmp && rm /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN sudo mv /tmp/sonar-scanner-$SONARQUBE_SCANNER_VERSION /opt/sonar-scanner
ENV PATH="/opt/sonar-scanner/bin:${PATH}"

