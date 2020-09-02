source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keys.vim

autocmd BufwritePost ~/.Xresources !xrdb -merge ~/.Xresources

cabbrev vb vert sb
