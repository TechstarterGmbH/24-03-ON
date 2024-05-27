# To find packages matching <phrase>:
apt search <phrase>

# To show information on a package:
apt show <package>

# To fetch package list:
apt update

# To download and install the updates and (UNLIKE apt-get) install new necessary packages:
apt upgrade

# To download and install the updates AND install new necessary packages
# AND remove packages that stand in the way of the upgrade - use with caution:
apt dist-upgrade

# To perform a full system upgrade:
apt update && apt upgrade # use dist-upgrade carefully if needed

# To install package(s):
apt install <package>...

# To uninstall package(s):
apt remove <package>...

# To remove automatically all unused packages:
apt autoremove

# To list dependencies of a package:
apt depends <package>...

# To remove packages and delete their config files:
apt purge <package>...

# To list all packages installed:
apt list --installed

 tldr:apt
# apt
# Package management utility for Debian based distributions.
# Recommended replacement for `apt-get` when used interactively in Ubuntu versions 16.04 and later.
# For equivalent commands in other package managers, see <https://wiki.archlinux.org/title/Pacman/Rosetta>.
# More information: <https://manpages.debian.org/latest/apt/apt.8.html>.

# Update the list of available packages and versions (it's recommended to run this before other `apt` commands):
sudo apt update

# Search for a given package:
apt search package

# Show information for a package:
apt show package

# Install a package, or update it to the latest available version:
sudo apt install package

# Remove a package (using `purge` instead also removes its configuration files):
sudo apt remove package

# Upgrade all installed packages to their newest available versions:
sudo apt upgrade

# List all packages:
apt list

# List installed packages:
apt list --installed
