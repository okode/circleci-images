FROM circleci/openjdk:8

MAINTAINER Okode <info@okode.com>

# Install GitHub Release Utility
ENV GOPATH=/opt/go
ENV PATH="$GOPATH/bin:${PATH}"
RUN sudo apt-get install golang-go
RUN sudo GOPATH=/opt/go go get github.com/aktau/github-release

# Install SonarQube Scanner
ARG SONARQUBE_SCANNER_VERSION=3.0.3.778
RUN sudo curl -L https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip > /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN sudo unzip /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip -d /tmp && rm /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN sudo mv /tmp/sonar-scanner-$SONARQUBE_SCANNER_VERSION /opt/sonar-scanner
ENV PATH="/opt/sonar-scanner/bin:${PATH}"

