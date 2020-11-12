

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

DIR=fsl-zeus-imx-5.4.24-2.1.0-var01.xml
mkdir -pv $DIR
cd $DIR

repo init -u https://github.com/varigit/variscite-bsp-platform.git -b fsl-zeus -m imx-5.4.24-2.1.0-var01.xml

repo init -u https://github.com/varigit/variscite-bsp-platform.git -b fsl-sumo -m imx-4.14.98-2.0.1_patch-var01.xml
repo sync -j4

MACHINE=imx8mm-var-dart DISTRO=fsl-imx-xwayland . var-setup-release.sh -b build_xwayland

