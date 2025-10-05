  syntax on
  "set cin "Use C-style indentation
  set ai  "Autoindent"
  set expandtab
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set cindent
  set wrap            " Enable word wrap
  set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<
  set number
  set relativenumber
  set scrolloff=8
  set signcolumn=yes
  set ignorecase
  set smartcase

  " Search highlights settings
  set incsearch
  set hlsearch
  set ignorecase
  set smartcase
  set showmatch
  nnoremap <silent> <F8> :set nohls!<Bar>set hlsearch?<CR>

  " --- maximum line length
  set textwidth=79

  " --- Color Theme ---
  colorscheme desert  " Built-in. You can use 'gruvbox', 'onedark', etc.

  " --- Show 80 character marker ---
  set colorcolumn=80
  set cursorline

  " --- Highlight trailing whitespace and tabs ---
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$\|\t/

  " Intendation related settings
  set autoindent
  set cindent
  set ruler
  set smartindent

  " --- enable mouse
  set mouse=a

  " --- Tagbar
  nmap <F9> :TagbarToggle<CR>

  " --- git
  nmap <F1> :GitBlame<CR>
  nmap <F2> :GitFiles<CR>

  " Visualize tabs and newlines
  set listchars=tab:▸\ ,eol:¬
  set list " To enable by default

  " Git commit message formatting
  autocmd FileType gitcommit setlocal colorcolumn=51,73 textwidth=72

  call plug#begin('~/.vim/plugged')

  Plug 'morhetz/gruvbox'
  Plug 'scrooloose/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'dense-analysis/ale'
  Plug 'preservim/tagbar'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'SirVer/ultisnips'
  Plug 'yggdroot/indentline'
  Plug 'darthfork/git-blame.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  call plug#end()
