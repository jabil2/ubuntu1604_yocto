

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

DIR=fsl-sumo-imx-4.14.98-2.0.1_patch-var01
mkdir -pv $DIR
cd $DIR
repo init -u https://github.com/varigit/variscite-bsp-platform.git -b fsl-sumo -m imx-4.14.98-2.0.1_patch-var01.xml
repo sync -j4

MACHINE=imx8mm-var-dart DISTRO=fsl-imx-xwayland . var-setup-release.sh -b build_xwayland

