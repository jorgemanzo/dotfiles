### My personal dotfiles
Feel free to use them if you want I guess.
I used NVIM so init.sh should create symbolic links for
where the dotfiles would usually live.

My .zshrc(s) file expects you're using zsh (lol) and oh-my-zsh

### Colorscheme
I only use ![vim-dim](https://github.com/jeffkreeftmeijer/vim-dim)
which allows me to use my terminal's color pallet instead of fumbling
about with odd colors of other vim specific colorschemes

### How to setup

#### On macOS
Symbolic link `~/.local/share/nvim/site` to the site folder in this directory.

Symbolic link `~/.config/nvim/init.vim` to the one in this directory

Symbolic link `~/.zshrc` to the `.zshrc-mac` in this directory

run `git submodule update` to get all plugins

#### On Linux
Symbolic link `~/.local/share/nvim/site` to the site folder in this directory.

Symbolic link `~/.config/nvim/init.vim` to the one in this directory

Symbolic link `~/.zshrc` to the `.zshrc-linux` in this directory

run `git submodule update` to get all plugins
