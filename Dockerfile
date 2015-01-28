FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update -y

RUN apt-get install -y curl

RUN curl -L https://github.com/coreos/etcd/releases/download/v0.4.5/etcd-v0.4.5-linux-amd64.tar.gz -o /tmp/etcd-v0.4.5-linux-amd64.tar.gz

RUN cd /tmp && tar xzf etcd-v0.4.5-linux-amd64.tar.gz
RUN cp -f /tmp/etcd-v0.4.5-linux-amd64/etcdctl /usr/bin
RUN rm -rf /tmp/etcd-v0.4.5-linux-amd64.tar.gz
#ENTRYPOINT ["/usr/local/bin/etcdctl"]
