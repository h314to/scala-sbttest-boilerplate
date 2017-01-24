FROM centos:7

WORKDIR /root

# install deps
RUN yum -y install java-1.8.0-openjdk make git && \
    curl -O http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm && \
    yum -y install scala-2.11.8.rpm && \
    rm scala-2.11.8.rpm && \
    curl https://bintray.com/sbt/rpm/rpm -o /etc/yum.repos.d/bintray-sbt-rpm.repo && \
    yum -y install sbt && \
    git clone https://github.com/h314to/scala-sbttest-boilerplate.git

WORKDIR /root/scala-sbttest-boilerplate

# run tests
CMD ["sbt", "test"]
