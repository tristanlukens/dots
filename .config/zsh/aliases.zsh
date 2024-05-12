## -- GENERAL -- ##
alias la="ls -la --color"
alias reload="source $DOTS/.zshrc"
alias showpath="echo '${PATH//:/\n}'"

# this only has to stay as long as I'm still used to using rm
alias rm="echo 'USE TRASH DAMMIT'; read -s; rm"

## -- DOCKER -- ##
alias disp="docker run --rm --name disp -h disp -it ubuntu:latest"

## -- GIT -- ##
alias gp="git push"
alias gundoc="git reset --soft HEAD~1"
alias gs="git status"
alias gd="git diff"

## -- GO -- ##
alias gor="go run ."
alias gob="go build ."

## -- LAZYGIT -- ##
alias g="lazygit"

## -- PYTHON -- ##
alias python="python3"
alias pip="pip3"
alias pyglobal="source $HOME/.python_envs/global/bin/activate"

## -- RUST -- ##
alias cr="cargo run"
alias cb="cargo build"

## -- TREE -- ##
alias ta="tree -Cax"
alias t="tree -CaI .git -I node_modules"

## -- OTHER -- ##
alias hn="curl https://hkkr.in/f2"
alias wtr="curl https://wttr.in/Netherlands"
alias solitaire="ttysolitaire --no-background-color -p 10"
alias cd_icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
