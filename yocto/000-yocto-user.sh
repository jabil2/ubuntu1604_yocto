
git config --global user.email "murilo.pontes@gmail.com"
git config --global user.name "Murilo Pontes"

useradd -m yocto -d /yocto -s /bin/bash
usermod -aG sudo yocto

ln -vfs /bin/bash /bin/sh
su yocto


