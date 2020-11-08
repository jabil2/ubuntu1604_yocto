#Without Qt content:
#bitbake fsl-image-gui

#Or with Qt content:
#bitbake fsl-image-qt5

bitbake core-image-minimal -c populate_sdk
