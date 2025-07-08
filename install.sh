#!/bin/bash
set -e
set -x

# Only export if not already exported
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.mj-dotfiles/.local/share}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.mj-dotfiles/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.mj-dotfiles/.cache}"
case ":$PATH:" in
  *":$HOME/.mj-dotfiles/.local/bin:"*) ;;
  *) export PATH="$HOME/.mj-dotfiles/.local/bin:$PATH" ;;
esac

programs_minimal=(curl vim git)

programs=(
  nala
  curl
  unzip
  git
  tmux
  vim
  fzf
  # zsh
  #gnupg
  #pass
  #w3m
  #build-essential
)

installers=(
  nala
  apt-get
  pkg
  apk
)

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

missing() {
  printf "\e[31m✘ %s is missing\e[0m\n" "$1"
}

info() {
  printf "\e[34m➤ %s\e[0m\n" "$1"
}

warn() {
  printf "⚠️  \e[33m%s\e[0m\n" "$1"
}

# Select available installer
select_installer() {
  for i in "${installers[@]}"; do
    if command_exists "$i"; then
      installer="$i"
      info "Installer selected: $installer"
      return 0
    else
      warn "$i not found"
    fi
  done
  echo "❌ No supported package manager found! Exiting."
  exit 1
}

update_installer() {
  case "$installer" in
    nala)
      sudo nala update
      sudo nala upgrade -y
      ;;
    apt-get)
      sudo apt-get update -y
      sudo apt-get upgrade -y
      ;;
    apk)
      sudo apk update
      ;;
    pkg)
      sudo pkg update
      sudo pkg upgrade
      ;;
    *)
      echo "❌ Unknown installer: $installer"
      exit 1
      ;;
  esac
}

install_apps() {
  local list=("$@")
  for program in "${list[@]}"; do
    if command_exists "$program"; then
      info "$program already installed"
    else
      missing "$program"
      warn "Installing $program..."
      sudo $installer install -y "$program"
      if [ "$program" = "nala" ]; then
        select_installer  # Switch to nala if installed mid-run
      fi
    fi
  done
}

setup_oh_my_posh () {
  POSH_INSTALLER="$HOME/.mj-dotfiles/dotfiles/posh/install.sh"
  
  if [[ -x "$POSH_INSTALLER" ]]; then
    echo "💡 Detected Oh My Posh installer at $POSH_INSTALLER"
    "$POSH_INSTALLER"
  else
    echo "⚠️  Skipping Oh My Posh setup. File not found: $POSH_INSTALLER"
  fi
}

setup_bash_config () {
  BASH_LINK_SCRIPT="$HOME/.mj-dotfiles/dotfiles/bash/link-bash_aliases-home.sh"
  
  if [[ -x "$BASH_LINK_SCRIPT" ]]; then
    echo "💡 Linking .bash_aliases $BASH_LINK_SCRIPT"
    source  "$BASH_LINK_SCRIPT"
  else
    echo "⚠️  Skipping .bash_aliases setup. File not found: $BASH_LINK_SCRIPT"
  fi
}

main() {
  select_installer
  update_installer

  if [[ "$1" == "--minimal" || "$1" == "-m" ]]; then
    info "Installing minimal packages..."
    install_apps "${programs_minimal[@]}"
  else
    info "Installing full package list..."
    install_apps "${programs[@]}"
  fi

  setup_oh_my_posh
  setup_bash_config

  info "✅ All done!"
}

main "$@"
