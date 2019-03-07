# export ZSH="/home/shinypuffin/.oh-my-zsh"
# fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
plugins=(
	git
	colored-man-pages
)

PURE_PROMPT_SYMBOL="∂"
autoload -U promptinit; promptinit
prompt pure

# The below line gives color to ls output in
# GNOME terminal, along with showing all dot files and symlinks
#
# alias ls="ls -a -l --color"

# The below line gives color to ls output in
# iterm2, along with doing the same as above in the next line
export CLICOLOR=1
alias ls="ls -a -l"
alias vim="nvim"

LS_COLOR=S$LS_COLORS:'di=0;35:' ; export LS_COLORS


# For macOS using oh-my-zsh and adding Haskell to my Path
# Path to your oh-my-zsh installation.
export ZSH="/Users/puffin/.oh-my-zsh"
export PATH="$HOME/Library/Haskell/bin:$PATH"


