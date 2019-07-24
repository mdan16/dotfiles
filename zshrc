export EDITORP=vim
export LANG=ja_JP.UTF-8

autoload -U colors ; colors
local DEFAULT=%{$reset_color%}
local RED=%{$fg[red]%}
local GREEN=%{$fg[green]%}
local YELLOW=%{$fg[yellow]%}
local BLUE=%{$fg[blue]%}
local PURPLE=%{$fg[purple]%}
local CYAN=%{$fg[cyan]%}
local WHITE=%{$fg[white]%}


PROMPT="$GREEN [%~:%n] %# $DEFAULT "

HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt share_history

autoload -U compinit && compinit
setopt auto_param_slash
setopt mark_dirs
setopt list_types
setopt auto_menu
setopt magic_equal_subst
setopt list_packed
setopt correct
setopt nobeep

bindkey -v

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source $HOME/.zsh/auto-fu.zsh/auto-fu.zsh
function zle-line-init(){
    auto-fu-init
}
zle -N zle-line-init
# 「-azfu-」を表示させないための記述
zstyle ':auto-fu:var' postdisplay $''
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
