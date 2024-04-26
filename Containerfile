FROM ubuntu:24.04

#COPY dnsmasq.conf /etc/

#RUN addgroup --system --gid 9999 dnsmasq && \
#    adduser --system --uid 9999 --ingroup dnsmasq dnsmasq && \
RUN apt-get update && \
    apt-get install --no-install-recommends --yes dnsmasq-base=2.86-1.1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*



#USER dnsmasq:dnsmasq

#EXPOSE 67/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]

#docker run -rm -it -p 67:67/udp --cap-add=NET_ADMIN --network=host "homelab/services/dnsmasq"
