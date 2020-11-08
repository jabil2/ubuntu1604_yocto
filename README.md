# ubuntu1604_yocto

Tested boards
* Variscite VAR-SOM-MX7
* Variscite DART-MX8M-MINI

## Docker
- sh build.sh
- sh push.sh

## Yocto SDK
- sh shell-root.sh
- source /yocto/000-drop-user.sh
- source /yocto/002-install-repo-fsl-sumo-imx-4.14.98-2.0.1_patch-var01.sh
- source /yocto/005-bitbake-build-minimal-sdk.sh
- SDK: /yocto/fsl-sumo-imx-4.14.98-2.0.1_patch-var01/build_xwayland/tmp/deploy/sdk/
- exit drop user
- run /yocto/fsl-sumo-imx-4.14.98-2.0.1_patch-var01/build_xwayland/tmp/deploy/sdk/fsl-imx-xwayland-glibc-x86_64-core-image-minimal-aarch64-toolchain-4.14-sumo.sh
- source /opt/fsl-imx-xwayland/4.14-sumo/environment-setup-aarch64-poky-linux
