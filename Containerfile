FROM debian:bookworm-20240812-slim

LABEL renovate.base-image=registry.hub.docker.com/debian
LABEL renovate.dependency-type="deb"
LABEL renovate.package-name="dnsmasq-base"
LABEL renovate.package-version="2.89-1"

#COPY dnsmasq.conf /etc/

#RUN addgroup --system --gid 9999 dnsmasq && \
#    adduser --system --uid 9999 --ingroup dnsmasq dnsmasq && \

RUN apt-get update && \
  apt-get install --no-install-recommends --yes \
  dnsmasq-base=2.89-1 \
  dnsmasq-utils=2.89-1 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*



#USER dnsmasq:dnsmasq

#EXPOSE 67/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "-k"]

#docker run -rm -it -p 67:67/udp --cap-add=NET_ADMIN --network=host "homelab/services/dnsmasq"
