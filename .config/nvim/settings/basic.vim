"
" General
"

let mapleader = ","
set number                          " Show line numbers
set numberwidth=5                   " Width of number column
set relativenumber
set noshowmode                        " Shows current vi mode in lower left
set cmdheight=1                     " Make a little more room for error messages
set linebreak                       " Break lines at word (requires Wrap lines)
set showbreak=+++                   " Wrap-broken line prefix
"set textwidth=120                  " Line wrap (number of cols)
set nowrap                          " No wrap lines
set showmatch                       " Highlight matching brace
set visualbell                      " Use visual bell (no beeping)
set autoread                        " Autoread files when changed on disk (and not on vim)
set mouse=a                         " Enable mouse support

set hlsearch                        " Highlight all search results
set smartcase                       " Enable smart-case search
set ignorecase                      " Always case-insensitive
set incsearch                       " Searches for strings incrementally
if maparg('<C-L>', 'n') ==# ''      " Use <C-L> to clear the highlighting of :set hlsearch
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

"
" Folding
"

set foldmethod=syntax               " Fold by the indentation by default
set foldnestmax=10                  " Deepest fold is 10 levels
set nofoldenable                    " Don't fold by default
set foldlevel=1

"
" Tabs & Indentation
"

set autoindent                      " Auto-indent new lines
set expandtab                       " Use spaces instead of tabs
set shiftwidth=4                    " Number of auto-indent spaces
set smartindent                     " Enable smart-indent
set smarttab                        " Enable smart-tabs
set softtabstop=4                   " Number of spaces per tab

set ruler                           " Show row and column ruler information
set undolevels=1000                 " Number of undo levels
set backspace=indent,eol,start      " Backspace behaviour

"
" Backups
"

set nobackup                        " Don't create backups of files
set nowritebackup                   " Don't make a backup before overwriting
set noswapfile                      " Don't create swap files
set directory=/tmp                  " Directory for temp files

set scrolloff=4                     " Places a couple lines between the current line and the screen edge
set sidescrolloff=2                 " Places a couple lines between the current column and the screen edge
"set laststatus=2                    " Makes the status bar always visible
set ttyfast                         " Improves redrawing for newer computers
set lazyredraw                      " No redraw the screen while running macros (goes faster)

"
" Menu compilation
"

set wildmenu                        " Enhanced ed command completion
set wildignore+=*.~                 " Ignore compiled objects and backups
set wildignore+=*.o,*.obj,*.pyc
set wildignore+=.sass-cache,tmp
set wildignore+=node_modules
set wildignore+=log,logs
set wildignore+=vendor
set wildmode=longest:full,list:full

"
" Programming
"

filetype plugin indent on
syntax on                           " Syntax highlighting
set cindent                         " Enables automatic indenting c-style
set cinoptions=l1,j1                " Affects the way cindent reindents lines
set showmatch                       " Flashes matching brackets or parenthasis
set matchtime=3                     " How long to flash brackets
autocmd BufWritePre * :%s/\s\+$//e  " Auto remove trailing whitespaces

"
" Shell (neovim)
"

if $SHELL !=# "" | set shell=$SHELL | endif

" Work with .vimrc
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source $MYVIMRC
	autocmd BufWritePost .init.vim source $MYVIMRC
augroup END


