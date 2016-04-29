FROM java:8-jdk

ENV MAVEN_VERSION 3.3.9

RUN mkdir -p /usr/share/maven \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Following redirects not working for following binary from:
# https://cli.run.pivotal.io/stable?release=linux64-binary&source=github

RUN mkdir -p /usr/share/cf-cli \
  && curl -fsSL https://s3.amazonaws.com/go-cli/releases/v6.17.0/cf-cli_6.17.0_linux_x86-64.tgz \
    | tar -xzC /usr/share/cf-cli \
  && ln -s /usr/share/cf-cli/cf /usr/bin/cf


ENV MAVEN_HOME /usr/share/maven

# TODO: share github ssh key into image 
