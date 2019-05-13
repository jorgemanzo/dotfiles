zshrc="~/.zshrc"
zshlogin="~/.zshlogin"
zshenv="~/.zshenv"

rm -f $zshrc
rm -f $zshlogin
rm -f $zshenv

# Make sym link for zshrc file
ln -s ~/dotfiles/.zshrc-linux .zshrc
mv .zshrc ~

# Make sym link for zshlogin file
ln -s ~/dotfiles/.zshlogin-linux .zshlogin
mv .zshlogin ~

# Make sym link for zshenv file
ln -s ~/dotfiles/.zshenv-linux .zshenv
mv .zshenv ~