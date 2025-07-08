#!/bin/bash
set -e

programs_minimal=(curl vim git)

programs=(
  nala
  curl
  git
  tmux
  vim
  #fzf
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
    nala|apt-get) sudo $installer update -y && sudo $installer upgrade -y ;;
    apk) sudo $installer update ;;
    pkg) sudo $installer update && sudo $installer upgrade ;;
    *) echo "❌ Unknown installer: $installer"; exit 1 ;;
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

  info "✅ All done!"
}

main "$@"
