#zmodload "zsh/zprof"

# ---------------------------------------------------------------- #

## -- ENV SETUP -- ##
export DOTS="$HOME/dots" # a lot relies on this directory being here. Put it here please. It's also defined in the linker script

export BREW_LOC="/opt/homebrew"
export PROJECTS="$HOME/Documents" # rust and ts projects mainly. Go projects are in their own folder

export EDITOR="nvim"
#export VISUAL="cot" # some programs use $VISUAL while I really only want them to use $EDITOR
export VISUAL=$EDITOR
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# todo: add this
#export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_STATE_HOME="$HOME/.local/state"
#export XDG_CACHE_HOME="$HOME/.cache"
#export XDG_RUNTIME_DIR=""
#export XDG_DATA_DIRS="/usr/local/share/:/usr/share/"
#export XDG_CONFIG_HOME="/etc/xdg"

export PATH="$BREW_LOC/bin:$PATH"
export PATH="$BREW_LOC/sbin:$PATH"
export PATH="$BREW_LOC/opt/node/bin:$PATH"
export PATH="$BREW_LOC/opt/llvm/bin:$PATH"

export PATH="$DOTS/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export GOPATH="$HOME/go"

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# ---------------------------------------------------------------- #

# -- CONFIG -- ##
# these are all for zsh itself, not for programs. The configs for those are in $DOTS/zsh/config.zsh
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt PROMPT_SUBST
setopt SHARE_HISTORY

setopt complete_aliases

HISTFILE="$HOME/.cache/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -M vicmd "^[[A" up-line-or-beginning-search # up arrow
bindkey -M vicmd "^[[B" down-line-or-beginning-search # down arrow

# ---------------------------------------------------------------- #

## -- PROGRAM CONFIGS -- ##
# see first zsh todo
#source $DOTS/.config/zsh/config.zsh

# ---------------------------------------------------------------- #

## -- LANGUAGE INITS -- ##
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

[[ ! -r /Users/tristanlukens/.opam/opam-init/init.zsh ]] || source /Users/tristanlukens/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ---------------------------------------------------------------- #

## -- EVALS -- ##
#eval "$(starship init zsh)" # comment out if using prompt under PROMPT section
eval "$(jump shell)"
eval "$(thefuck --alias)"
#eval "$(fnm env)"

# ---------------------------------------------------------------- #

## -- ALIASES -- ##
source $DOTS/.config/zsh/aliases.zsh

# ---------------------------------------------------------------- #

## -- PROMPT -- ##
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' formats ' on branch %F{green}%b%f'

PROMPT='as %F{yellow}%n%f in %F{cyan}%~%f$vcs_info_msg_0_ $ '

# ---------------------------------------------------------------- #

## -- PLUGINS AND THEIR CONFIGS -- ##
# zsh-fast-syntax-highlighting [https://github.com/zdharma-continuum/fast-syntax-highlighting]
source $BREW_LOC/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# zsh-vim-mode [https://github.com/softmoth/zsh-vim-mode]
#MODE_INDICATOR="" # probably wanna turn that off when using ligatures
KEYTIMEOUT=1 # https://youtu.be/lppTJFYigoU?t=11
source $DOTS/.config/zsh/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh

# ---------------------------------------------------------------- #

## -- FUNCTIONS AND COMPLETIONS -- ##
autoload -Uz $DOTS/.config/zsh/functions/*(:t) # I have no idea why that (:t) is there, but it's probably important...
fpath=($fpath $DOTS/.config/zsh/functions)

# this is VERY slow the first time, because it needs to be chached then
# even then though, it's kind of slow
#for dir in $BREW_LOC/Cellar/**/site-functions
#do
#	fpath=($dir $fpath)
#done

autoload -Uz compinit
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
_comp_options+=(globdots)

# ---------------------------------------------------------------- #

## -- PROGRAM CONFIGS -- ##
source $DOTS/.config/zsh/config.zsh # fzf doesn't work properly otherwise. Remember you have to have run `/opt/homebrew/opt/fzf/install` for .fzf.zsh to be generated

# ---------------------------------------------------------------- #

#zprof
