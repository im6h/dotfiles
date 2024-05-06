[[ $- != *i* ]] && return
set -o vi

export SCRIPTS="$HOME/bash_scripts"
export GITHUB="$HOME/Documents/code/github/"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="/opt/homebrew/opt/openjdk@11/bin:${PATH}:${SCRIPTS}"

export CODE="$HOME/Documents/code"
export DOTFILES="$CODE/personal/dotfiles"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# second brain folder
export SECOND_BRAIN="$HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/im6h-ob-vault"

# customize command alias
alias v="nvim"
alias ..="cd .."
alias ll="eza -la --icons"
alias config="cd ~/.config"
alias log="git log --oneline"
alias branch="git branch -a"
alias reload="source ~/.bashrc"
alias k="kubectl"
alias ggraph="git log --oneline --graph --color --all --decorate"
alias lzg="lazygit"
alias tf="terraform"
alias trg="terragrunt"
alias av="aws-vault"
alias cdsb="cd $SECOND_BRAIN"

# racing
alias eb="v ~/.bashrc"
alias fae="fzf | xargs -r nvim"

# color prompt_command
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"

if [[ -f "$HOME/bash_scripts/git_prompt.sh" ]]; then
	source "$HOME/bash_scripts/git_prompt.sh"
fi

## https://github.com/jonmosco/kube-ps1 - thanks for make kube-ps1
if [[ -f "$HOME/bash_scripts/kube_prompt.sh" ]]; then
	source "$HOME/bash_scripts/kube_prompt.sh"
fi

# colorized prompt
PROMPT_COMMAND='__git_ps1 "\[\e[33m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[0m\]" " $(kube_ps1)\n$ "'

# support bash fzf
# if [[ "$OSTYPE" == "darwin"* ]]; then
# 	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && source "/opt/homebrew/etc/profile.d/bash_completion.sh"
# else
# 	[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# fi

#source <(kubectl completion bash)
# command -v fzf >/dev/null 2>&1 && {
# 	source <(kubectl completion bash | sed 's#"${requestComp}" 2>/dev/null#"${requestComp}" 2>/dev/null | head -n -1 | fzf  --multi=0 #g')
# }
# complete -F __start_kubectl k
