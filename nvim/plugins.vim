call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'sheerun/vim-polyglot'
  Plug 'ap/vim-css-color'
  Plug 'itchyny/lightline.vim'

  Plug 'justinmk/vim-sneak'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" THEMES AND APERANCE

colorscheme gruvbox
let g:gruvbox_contrast_dark = '(hard)' 


" SNEAK
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" DEV ICONS
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
