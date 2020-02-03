#al daxiin config for the Zoomer shell

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=$HISTSIZE
unsetopt beep

PROMPT="%F{175}%2~ %(?.%F{white}.%F{red})> "

alias ls="ls --color" \
	ll="ls -l" \
	networks-fucked-man="sudo systemctl restart NetworkManager.service" \
	xmentask='task add tag:xMentium pri:M' \
	gen-ctags='ctags -R 2> /dev/null'

autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
#zstyle :compinstall filename '/home/daxi/.zshrc'

#vi mode
bindkey -v
export KEYTIMEOUT=1
source ~/.zsh/vi-mode.zsh/vi-mode.zsh

#emulate fish
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh

#git stuff
autoload -U add-zsh-hook

#nvm stuff
source /usr/share/nvm/init-nvm.sh

#edit command with ^c
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

