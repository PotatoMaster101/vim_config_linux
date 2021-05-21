" Vim config file for *nix, store as `$HOME/.vimrc`.
" Requires vim-plug (https://github.com/junegunn/vim-plug).

set autoindent                                              " Auto carry the indentation
set autoread                                                " Auto update file if changed
set background=dark                                         " Dark themed FTW
set clipboard=unnamedplus                                   " Copy to system clipboar
set cursorline                                              " Show selected lin
set encoding=utf-8                                          " Force UTF-8
set expandtab                                               " Insert appropriate number of spaces
set fileformat=unix                                         " Use Unix line endings
set foldenable                                              " Enable folding
set foldlevelstart=99                                       " Unfold all on start
set foldmethod=indent                                       " Fold based on indentation
set foldnestmax=10                                          " Maximum nested folding limit
set hlsearch                                                " Highlight searching
set ignorecase                                              " Don't care about case while searching
set incsearch                                               " Incremental while searching
set lazyredraw                                              " Need performance for macros
set list                                                    " Show whitespace characters
set listchars=tab:»\ ,trail:·,extends:›,precedes:‹,nbsp:·   " Fancy characters for whitespaces
set magic                                                   " Better regex
set mouse=c                                                 " Disable mouse
set nobackup                                                " Don't generate backup files
set nocompatible                                            " Not compatible with VI
set nohidden                                                " Close the buffer when another file is opened
set noswapfile                                              " Don't generate swap files
set nowritebackup                                           " Don't write backup files
set number                                                  " Show line number on current line
set pastetoggle=<F2>                                        " Paste mode
set path+=**                                                " Go into subfolders when searching files
set relativenumber                                          " Show other line numbers as relatives
set ruler                                                   " Show current line and column position
set secure                                                  " Don't load random .vimrc from local dir
set shiftwidth=4                                            " Spaces for indentation
set showcmd                                                 " Show command
set smartcase                                               " Care about case if uppercase while searching
set smartindent                                             " Don't be dumb
set softtabstop=4                                           " TABs to spaces
set tabstop=4                                               " Set TAB size
set wildmenu                                                " Show all auto complete settings
set wrapscan                                                " Wrap to start if EOF while searching
syntax on                                                   " Force language syntax highlight
let &colorcolumn="120"                                      " Set margin

" File type settings
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
filetype plugin on
filetype indent on

" Highlight settings
highlight ColorColumn ctermbg=darkgrey
highlight LineNr ctermfg=grey
highlight CursorLine cterm=NONE ctermbg=236

" Key mappings
let mapleader = ","
nnoremap <Leader><Space> :let @/=""<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <F1> :NERDTreeToggle<CR>

" Plugin settings
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 1
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_liststyle = 3
silent! colorscheme molokai_dark
