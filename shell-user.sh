
docker run \
 --rm \
 --user $(id -u):$(id -g) \
 -v /etc/passwd:/etc/passwd:ro \
 -v /etc/group:/etc/group:ro \
 -v $PWD/yocto:/yocto \
 --workdir=/yocto \
 -it \
 murilopontes/ubuntu1604_yocto $@
