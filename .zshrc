export ZSH="/home/shinypuffin/.oh-my-zsh"
fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
plugins=(
	git
	colored-man-pages
)

PURE_PROMPT_SYMBOL="∂"
autoload -U promptinit; promptinit
prompt pure

alias ls="ls -a --color"
alias vim="nvim"

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
