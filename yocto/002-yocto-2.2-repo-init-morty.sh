
mkdir ~/var-fslc-yocto-2.2-morty
cd ~/var-fslc-yocto-2.2-morty

if [ -d build_xwayland ]; then
   source setup-environment build_xwayland
else
   repo init -u https://github.com/varigit/variscite-bsp-platform -b fsl-morty
   repo sync -j4
   MACHINE=imx8mm-var-dart DISTRO=fsl-imx-xwayland . var-setup-release.sh -b build_xwayland
fi
