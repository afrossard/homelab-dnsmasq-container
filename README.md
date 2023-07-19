# Container with dnsmasq

`docker run \
    --rm -it \
    --cap-add=NET_ADMIN \
    --network=host \
    --mount type=bind,source=/etc/dnsmasq.conf,target=/etc/dnsmasq.conf,readonly \
    --mount type=bind,source=/srv/dnsmasq/tftp,target=/srv/dnsmasq/tftp,readonly \
    ghcr.io/afrossard/homelab-dnsmasq-container:main`
