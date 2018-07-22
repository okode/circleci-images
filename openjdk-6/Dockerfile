FROM java:openjdk-6-jdk

MAINTAINER Okode <info@okode.com>

# Install GitHub Release Utility
ENV GOPATH=/opt/go
ENV PATH="$GOPATH/bin:${PATH}"
RUN apt-get install golang-go
RUN GOPATH=/opt/go go get github.com/aktau/github-release

# Install SonarQube Scanner
ARG SONARQUBE_SCANNER_VERSION=3.0.3.778
RUN curl -L https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip > /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN unzip /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip -d /tmp && rm /tmp/sonar-scanner-cli-$SONARQUBE_SCANNER_VERSION.zip
RUN mv /tmp/sonar-scanner-$SONARQUBE_SCANNER_VERSION /opt/sonar-scanner
ENV PATH="/opt/sonar-scanner/bin:${PATH}"

# Install maven
ENV MAVEN_VERSION 3.2.5
RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /usr/share/maven
