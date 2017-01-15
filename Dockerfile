FROM openjdk:8
MAINTAINER Ronen Narkis <narkisr@gmail.com>
ADD pkg/celestial_0.13.4_all.deb /tmp
RUN ["/usr/bin/dpkg", "-i", "/tmp/celestial_0.13.4_all.deb"]
ADD celestial.edn /etc/celestial/celestial.edn
CMD ["/usr/share/celestial/run.sh"]
