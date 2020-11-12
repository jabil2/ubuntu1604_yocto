
mkdir -pv ~/var-fslc-yocto-2.6-thud
cd ~/var-fslc-yocto-2.6-thud

if [ -d build_xwayland ]; then
   source setup-environment build_xwayland
else
   repo init -u https://github.com/varigit/variscite-bsp-platform -b thud
   repo sync -j4
   MACHINE=imx8mm-var-dart DISTRO=fslc-x11 . setup-environment build_xwayland
fi
