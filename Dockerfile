FROM centos:7

# install deps
RUN yum -y install java-1.8.0-openjdk make && \
    curl -O http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm && \
    yum -y install scala-2.11.8.rpm && \
    rm scala-2.11.8.rpm && \
    curl https://bintray.com/sbt/rpm/rpm -o /etc/yum.repos.d/bintray-sbt-rpm.repo && \
    yum -y install sbt && \
    mkdir -p /root/testdir


# copy source
COPY /root/testdir/
COPY Makefile /root/testdir/

WORKDIR /root/testdir

# run tests
CMD ["make", "test"]

