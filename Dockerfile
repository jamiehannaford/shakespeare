FROM ubuntu

MAINTAINER Jamie Hannaford <jamie.hannaford@rackspace.com>

RUN apt-get -y update
RUN apt-get -y install gcc make bison flex

COPY . /code
WORKDIR /code

RUN make install > /dev/null 2>&1

ENTRYPOINT ["/bin/bash", "run.sh"]
CMD ["fibonacci"]
