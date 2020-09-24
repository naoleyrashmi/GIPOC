FROM centos:7

RUN rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm && \
    yum upgrade -y && \
    yum update -y && \
    yum install -y puppet-agent && \
    yum clean all

EXPOSE 9999 8080
COPY test.sh  /tmp
RUN chmod +x /tmp/test.sh
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
CMD ["/tmp/test.sh", "run"]
