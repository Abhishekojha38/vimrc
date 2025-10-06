" -----------------------------
" Basic Settings
" -----------------------------
syntax on
set number                     " Show line numbers
set relativenumber              " Show relative line numbers
set wrap                        " Enable word wrap
set scrolloff=8                 " Keep 8 lines visible above/below cursor
set signcolumn=yes              " Always show sign column
set ruler                       " Show cursor position
set mouse=a                     " Enable mouse support

" -----------------------------
" Indentation and Tabs
" -----------------------------
set expandtab                   " Use spaces instead of tabs
set tabstop=4                   " Number of spaces a <Tab> counts for
set shiftwidth=4                " Number of spaces for each indent level
set softtabstop=4               " Make <Tab> feel like 4 spaces
set autoindent                  " Copy indent from current line
set smartindent                 " Smarter autoindenting for C-like code
set cindent                     " Use C-style indentation

" -----------------------------
" Folding
" -----------------------------
set foldenable                  " Enable folding
set foldmethod=syntax           " Use syntax-based folding
set foldlevelstart=99           " Open all folds by default
set foldnestmax=3               " Limit nested folds

" Folding key mappings
nnoremap <space> za             " Toggle fold under cursor
nnoremap zO zR                  " Open all folds
nnoremap zC zM                  " Close all folds

" -----------------------------
" Search Settings
" -----------------------------
set incsearch                   " Highlight matches while typing
set hlsearch                    " Highlight all matches
set ignorecase                  " Ignore case in search...
set smartcase                   " ...unless capital letters used
set showmatch                   " Highlight matching brackets
nnoremap <silent> <F8> :set nohls!<Bar>set hlsearch?<CR>  " Toggle search highlight

" -----------------------------
" Visual Enhancements
" -----------------------------
set list                        " Show hidden characters
 "  set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

set cursorline                  " Highlight current line
set colorcolumn=80              " Show 80-character marker
set textwidth=79                " Set maximum line length

" Highlight trailing whitespace and tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/

" -----------------------------
" Colorscheme
" -----------------------------
colorscheme desert              " Built-in theme (try 'gruvbox','onedark', etc.)

" -----------------------------
" Git Integration
" -----------------------------
nmap <F1> :GitBlame<CR>         " Toggle git blame
nmap <F2> :GitFiles<CR>         " Browse git-tracked files

" -----------------------------
" Tagbar
" -----------------------------
nmap <F9> :TagbarToggle<CR>

" -----------------------------
" Filetype-specific Settings
" -----------------------------
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
call plug#end()
