FROM scratch

ADD centos-7-x86_64-docker.tar.xz /

# Base packages
RUN yum update -y && yum -y install epel-release bash                         

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190305"

CMD ["/bin/bash"]
