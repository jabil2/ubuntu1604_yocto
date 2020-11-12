
mkdir ~/var-fslc-yocto-2.4-rocko
cd ~/var-fslc-yocto-2.4-rocko

if [ -d build_xwayland ]; then
   source setup-environment build_xwayland
else
   repo init -u https://github.com/varigit/variscite-bsp-platform -b rocko
   repo sync -j4
   MACHINE=imx8mm-var-dart DISTRO=fslc-x11 . setup-environment build_xwayland
fi
