alias ll='ls -lF'
alias lla='ls -alF'
alias g='git'

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Powerline
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)
$ "
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# Auto suggestions (from brew)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh  

# Google search scripts
google() {
  if [ $(echo $1 | egrep "^-[cfs]$") ]; then
    local opt="$1"
    shift
  fi

  local url="https://www.google.co.jp/search?q=${*// /+}"
  local app="/Applications"
  local g="${app}/Google Chrome.app"
  local f="${app}/Firefox.app"
  local s="${app}/Safari.app"
  case ${opt} in
    "-g")   open "${url}" -a "$g";;
    "-f")   open "${url}" -a "$f";;
    "-s")   open "${url}" -a "$s";;
    *)      open "${url}";;
  esac
}

