mkdir -pv files/sdk
cp -av yocto/fsl-sumo-imx-4.14.98-2.0.1_patch-var01/build_xwayland/tmp/deploy/sdk/*.sh files/sdk

docker build files -t murilopontes/ubuntu1604_yocto

