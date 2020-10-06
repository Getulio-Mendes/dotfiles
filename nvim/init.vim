source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keys.vim

autocmd BufwritePost ~/.Xresources !xrdb -merge ~/.Xresources

autocmd BufNewFile,BufRead *.txt call lightline#init()
autocmd BufNewFile,BufRead *.txt :Goyo | :set wrap

autocmd BufNewFile,BufRead *.md call lightline#init()
autocmd BufNewFile,BufRead *.md :Goyo | :set wrap

cabbrev vb vert sb
