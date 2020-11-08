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
