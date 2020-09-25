FROM centos:7

RUN rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm && \
    yum install -y puppet-agent && \
    yum install -y psql && \
    yum install epel-release -y  && \
    yum install python-pip -y && \
    pip install --upgrade pip && \
    pip install awscli --upgrade --ignore-installed six && \
    yum clean all


EXPOSE 9999 8080
COPY test.sh  /tmp
RUN chmod +x /tmp/test.sh
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
CMD ["/tmp/test.sh", "run"]
