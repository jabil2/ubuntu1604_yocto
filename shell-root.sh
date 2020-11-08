
docker run \
 --rm \
 -v $PWD/yocto:/yocto \
 --workdir=/yocto \
 -it \
 murilopontes/ubuntu1604_yocto $@
