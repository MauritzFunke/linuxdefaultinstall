cd /root
git clone https://github.com/MauritzFunke/linuxdefaultinstall.git
mv linuxdefaultinstall/.zsh .
mv linuxdefaultinstall/.nanorc .
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
