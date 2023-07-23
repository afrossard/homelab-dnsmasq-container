# Container with dnsmasq

`docker run \
    -d \
    --restart unless-stopped \
    --cap-add=NET_ADMIN \
    --network=host \
    --mount type=bind,source=/srv/dnsmasq/dnsmasq.conf,target=/etc/dnsmasq.conf,readonly \
    --mount type=bind,source=/srv/dnsmasq/tftp,target=/srv/dnsmasq/tftp,readonly \
    --mount type=bind,source=/srv/dnsmasq/dnsmasq.leases,target=/srv/dnsmasq/dnsmasq.leases,consistency=consistent \
    ghcr.io/afrossard/homelab-dnsmasq-container:main`
