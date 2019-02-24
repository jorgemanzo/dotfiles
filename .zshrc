export ZSH="/home/shinypuffin/.oh-my-zsh"
fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
plugins=(
	git
	colored-man-pages
)

PURE_PROMPT_SYMBOL="∂"
autoload -U promptinit; promptinit
prompt pure

alias ls="ls -a"

