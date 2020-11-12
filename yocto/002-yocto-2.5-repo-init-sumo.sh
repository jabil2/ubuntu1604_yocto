

mkdir -pv ~/var-fslc-yocto-2.5-sumo
cd ~/var-fslc-yocto-2.5-sumo

if [ -d build_xwayland ]; then
   source setup-environment build_xwayland
else
   repo init -u https://github.com/varigit/variscite-bsp-platform -b fsl-sumo
   repo sync -j4
   MACHINE=imx8mm-var-dart DISTRO=fsl-imx-xwayland . var-setup-release.sh -b build_xwayland
fi


