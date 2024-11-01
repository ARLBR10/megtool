# Code Avaliable at https://github.com/ARLBR10/megtool

version="1.0"
madeby="megarthur"

# Settings colors
COLOR_RED='\033[0;31m'
COLOR_BLUE='\033[0;34m'

# Requiring `sudo` permission
sudo ls > /dev/null

# Updating the packages
echo 'Installing required packages...'

sudo apt-get update > /dev/null
sudo apt update > /dev/null

# Checking if `gum` is installed
REQUIRED_PKG="gum"
PKG_OK=$(ls /etc/apt/keyrings/ | grep "charm.gpg")

# if not installed install it
if [ "" = "$PKG_OK" ]; then
  echo "Installing \`gum\` package..."
  sudo mkdir -p /etc/apt/keyrings > /dev/null
  curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg > /dev/null
  echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/>  sudo apt-get update > /dev/null
  echo "\`gum\` package is at Apt"
fi

sudo apt-get install -y gum jq > /dev/null
echo 'Installed required packages!'

# Installing the megcli files
echo 'Installing the latest package of the `meg-cli`'
wget https://tools.megarthur.dev/release -P /usr/local/megcli/release.sh > /dev/null
ln -s /usr/local/megcli/release.sh /usr/local/bin/megtool > /dev/null
echo 'Installed the latest package of the `meg-cli`'

# Just the welcome message
clear

gum style \
        --foreground "#0148ca" --border-foreground "#061d5b" --border double \
        --align center --width 50 --margin "1 2" --padding "2 4" \
        'Welcome to `meg-cli`' 'Made by `megarthur` to make life easier'