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

setupLinux() {
  echo "Setup for Linux"
}

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)   setupLinux;;
    Darwin*)  setupMac;;
esac

echo "Setting up local dev environment..."
ansible-playbook -i ./hosts ./local_env.yml
