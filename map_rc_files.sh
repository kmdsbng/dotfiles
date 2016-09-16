ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.vim $HOME/
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/bin_common $HOME/
ln -s $HOME/dotfiles/.irbrc $HOME/.irbrc
ln -s $HOME/dotfiles/.gemrc $HOME/.gemrc
ln -s $HOME/dotfiles/.functions $HOME/.functions
ln -s $HOME/dotfiles/.git_template $HOME/.git_template
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.rubocop.yml $HOME/.rubocop.yml
mkdir $HOME/.vimundo

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim


