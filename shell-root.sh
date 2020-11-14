
docker run \
 --rm \
 --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun \
 -v $PWD/yocto:/yocto \
 --workdir=/yocto \
 -it \
 murilopontes/ubuntu1604_yocto $@
