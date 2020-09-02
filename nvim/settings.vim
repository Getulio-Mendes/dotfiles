" set leader key
nnoremap <SPACE> <Nop>
let mapleader = " "

" Enconding and formating
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set tabstop=2                           " Insert 2 spaces for a tab
set showtabline=2                       " Always show tabs
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set nowrap                              " Display long lines as just one line
set number relativenumber                             " Line numbers

" Themes and vizual
syntax enable                           " Enables syntax highlighing
set background=dark                     " tell vim what the background color looks like
set cmdheight=2                         " More space for displaying messages
set t_Co=256                            " Support 256 colors
set pumheight=10                        " Makes popup menu smaller
set laststatus=2                        " Always display the status line
set ruler              			            " Show the cursor position all the time
set cursorline                          " Enable highlighting of the current line
set mouse=a                             " Enable your mouse
set noshowmode

" General

set hidden                              " Required to keep multiple buffers open multiple buffers
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
