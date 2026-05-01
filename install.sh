echo "This script works for Debian and Debian based systems (using apt)"

sudo apt install i3-wm nm-applet rofi feh picom neovim alacritty

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Now go install a nerdfont I'm not doing that for you"
