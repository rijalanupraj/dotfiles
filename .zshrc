export ZSH="$HOME/.oh-my-zsh"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# GPG KEY
export GPG_TTY=$(tty)

ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use z macos zsh-bat vi-mode)

bindkey -M viins 'jk' vi-cmd-mode

source $ZSH/oh-my-zsh.sh

# ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
alias dotfiles="cd ~/dotfiles/ && nvim"
alias digibackup="cd ~/work/digitech/backup/schoolworkspro_backup"

# Node Version Manger
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# export PATH="/opt/homebrew/opt/mongodb-community/bin:$PATH"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
export PATH="$HOME/development/flutter/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
#export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
