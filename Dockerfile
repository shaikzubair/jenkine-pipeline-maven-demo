FROM maven:3.6.0-jdk-13

ARG jenkinsUserId=
RUN if ! id $jenkinsUserId; then \
    usermod -u ${jenkinsUserId} jenkins; \
    groupmod -g ${nodeId} jenkins; \
  fi

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install -y openssh-clients
