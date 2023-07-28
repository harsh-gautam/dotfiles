#!/usr/bin/env bash

# Copy the default config file if already not present

############
# includes #
############

[ ! -f install_config ] && cp install_config.dist install_config

source ./install_config
source ./colors.sh
source ./install_functions.sh
source ./zsh/.zshenv

###########
# Display #
###########

echo -e "
${yellow} 

 ----------------------
|		      |
| Installing dotfiles |
|		      |
 ----------------------
"

echo -e "${yellow}!!! ${red}WARNING ${yellow}!!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
then
	echo -e "${yellow}Press any key to continue..\n"
	read key;
fi

###########
# Install #
###########

. "$DOTFILES/install/install_zsh.sh"

dot_is_installed git && dot_install git
# dot_is_installed nvim && dot_install nvim

