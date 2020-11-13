
mkdir -pv sources
cd sources

git clone -b dunfell git://git.yoctoproject.org/poky.git
#git clone -b dunfell git://git.yoctoproject.org/meta-freescale.git
git clone -b dunfell git://git.yoctoproject.org/meta-virtualization.git

git clone -b dunfell git://git.openembedded.org/meta-openembedded.git

git clone -b dunfell https://github.com/Freescale/meta-freescale.git
git clone -b dunfell https://github.com/Freescale/meta-freescale-distro.git
git clone -b dunfell https://github.com/Freescale/meta-freescale-3rdparty.git

git clone -b dunfell https://github.com/sbabic/meta-swupdate.git
git clone -b dunfell https://github.com/meta-qt5/meta-qt5.git

git clone -b dunfell https://github.com/varigit/meta-variscite-fslc.git


SRC=$PWD
for x in *; do
cd $SRC/$x && git pull
done
cd $SRC


cd ..

pip3 install --user -r sources/poky/bitbake/toaster-requirements.txt

source sources/poky/oe-init-build-env

source toaster start webport=0.0.0.0:8000


#bitbake-layers show-recipes "*-image-*"
#bitbake-layers show-recipes "*gcc*"
#bitbake-layers show-layers
#bitbake fsl-image-gui
#bitbake fsl-image-gui -c populate_sdk
bitbake core-image-sato-sdk

