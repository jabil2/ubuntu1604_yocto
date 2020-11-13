

git clone -b dunfell git://git.yoctoproject.org/poky.git
cd poky
pip install -r bitbake/toaster-requirements.txt
source oe-init-build-env
source toaster start webport=0.0.0.0:8000
