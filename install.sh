# I know this will be buggy if more than 1 user exists
USER_NAME=$(ls /home)
USER_DIR=/home/$USER_NAME

# Check if zsh is installed
if [ ! -f /bin/zsh ]; then
    apt install -y zsh
fi
# Install oh my zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $USER_DIR/.oh-my-zsh

# Change default shell to zsh
chsh -s $(which zsh) $USER_NAME

# Install theme
git clone https://github.com/MauritzFunke/linuxdefaultinstall.git /tmp/install
mv /tmp/install/mauritz.zsh-theme $USER_DIR/.oh-my-zsh/themes
mv /tmp/install/.zshrc $USER_DIR

chown -R $USER_NAME:$USER_NAME $USER_DIR
