## -- BAT -- ##
# nord looks OK with ayu (my main theme), but there's also a gruvbox theme
export BAT_THEME="gruvbox-dark"

# ---------------------------------------------------------------- #

## -- FZF -- ##
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,target} --type f"
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

[ -f $HOME/.fzf.zsh ] && source ~/.fzf.zsh

# ---------------------------------------------------------------- #

## -- WALK CD FUNCTIONALITY -- ##

function lk {
  cd "$(walk "$@")"
}
