setupMac() {
  echo "Setup for Mac"
  if ! [ -x "$(command -v brew)" ]; then
    echo "Brew not installed, installing it."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo "Brew installed, updating and upgrading it."
    brew update
    brew upgrade
  fi

  if ! [ -x "$(command -v ansible-playbook)" ]; then
    echo "Ansible not installed, installing it."
    brew install ansible
  else
    echo "Ansible installed, skipping installation."
  fi
}

setupDebian() {
  echo "Setup for Debian-based distro."
  sudo apt-get update
  sudo apt-get --yes upgrade

  if ! [ -x "$(command -v ansible-playbook)" ]; then
    echo "Ansible not installed, installing it."
    echo "Adding Ansible repository to /etc/apt/sources.list"

    sudo grep -q -F 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' /etc/apt/sources.list || sudo echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
    sudo apt-get update
    sudo apt-get install ansible
  else
    echo "Ansible installed, skipping installation."
  fi

}

setupLinux() {
  echo "Setup for Linux"

  if [ -f "/etc/debian_version" ]; then
    setupDebian
  elif [ "$(grep -Ei 'fedora|redhat' /etc/*release)" ]; then
    echo "Setup for RedHat-based distro."
  else
    echo "Unable to setup this distro."
  fi
}

unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)   setupLinux;;
  Darwin*)  setupMac;;
esac

echo "Setting up local dev environment..."
cp ansible.cfg $HOME/.ansible.cfg
ansible-playbook -i ./hosts ./local_env.yml
