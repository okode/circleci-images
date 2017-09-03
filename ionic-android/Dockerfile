FROM circleci/android:api-26-alpha

MAINTAINER Okode <info@okode.com>

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

# Install Cordova and Ionic
RUN sudo yarn global add ionic cordova --non-interactive
RUN cordova telemetry off
RUN CI=true ionic config set -g daemon.updates false
RUN ionic telemetry off

# Install Gradle
ARG GRADLE_VERSION=4.1
RUN sudo curl https://downloads.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip > /tmp/gradle-$GRADLE_VERSION-bin.zip
RUN sudo unzip /tmp/gradle-$GRADLE_VERSION-bin.zip -d /tmp && rm /tmp/gradle-$GRADLE_VERSION-bin.zip
RUN sudo mv /tmp/gradle-$GRADLE_VERSION /opt/gradle
ENV PATH="/opt/gradle/bin:${PATH}"

# Install GitHub Release Utility
ENV GOPATH=/opt/go
ENV PATH="$GOPATH/bin:${PATH}"
RUN sudo apt-get install golang-go
RUN sudo GOPATH=/opt/go go get github.com/aktau/github-release
