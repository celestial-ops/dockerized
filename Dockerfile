FROM openjdk:8
ENV VERSION=0.13.4
MAINTAINER Ronen Narkis <narkisr@gmail.com>
ADD "https://github.com/celestial-ops/celestial-core/releases/download/${VERSION}/celestial_${VERSION}_all.deb" /tmp
RUN /usr/bin/dpkg -i /tmp/celestial_"$VERSION"_all.deb
ADD celestial.edn /etc/celestial/celestial.edn
CMD /usr/share/celestial/run.sh
