call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'sheerun/vim-polyglot'
  Plug 'ap/vim-css-color'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/goyo.vim'

  Plug 'justinmk/vim-sneak'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" THEMES AND APERANCE

colorscheme gruvbox
let g:gruvbox_contrast_dark = '(hard)' 


" SNEAK
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" Lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" COCEX
nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" EMMET

let g:user_emmet_leader_key=";"

" COC 

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
