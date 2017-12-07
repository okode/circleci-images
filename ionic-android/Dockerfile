FROM circleci/android:api-27-node8-alpha

MAINTAINER Okode <info@okode.com>

# Install Cordova and Ionic
RUN sudo npm install -g ionic cordova
RUN cordova telemetry off
RUN CI=true ionic config set -g daemon.updates false
RUN ionic telemetry off

# Install Gradle
ARG GRADLE_VERSION=4.3.1
RUN sudo curl https://downloads.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip > /tmp/gradle-$GRADLE_VERSION-bin.zip
RUN sudo unzip /tmp/gradle-$GRADLE_VERSION-bin.zip -d /tmp && rm /tmp/gradle-$GRADLE_VERSION-bin.zip
RUN sudo mv /tmp/gradle-$GRADLE_VERSION /opt/gradle
ENV PATH="/opt/gradle/bin:${PATH}"

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
