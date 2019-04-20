"vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
set nocompatible
set background=dark     " Assume a dark background

" Autoinstall vim-plug if missing {
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" }

" Function to source all .vim files in directory {
function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction
" }



" Plugins
call plug#begin('~/.vim/plugged')

" Automatically install missing plugins on startup {
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif
" }

Plug 'arcticicestudio/nord-vim' " Color scheme
Plug 'junegunn/vim-easy-align'  " Align symbols vertically in selection
Plug 'sheerun/vim-polyglot'     " Improve syntax highlight for different languages
Plug 'itchyny/lightline.vim'    " Vim status line
Plug 'scrooloose/nerdtree'      " File explorer
Plug 'ryanoasis/vim-devicons'
Plug 'vimlab/split-term.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'janko-m/vim-test'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'  " Syntax checking
Plug 'vim-syntastic/syntastic' "Syntax Checking
Plug 'scrooloose/nerdcommenter'
Plug 'hushicai/tagbar-javascript.vim'
Plug 'ternjs/tern_for_vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'christoomey/vim-tmux-navigator'

" Autocompletion with language servers
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'ryanolsonx/vim-lsp-javascript'
Plug 'ryanolsonx/vim-lsp-typescript'

" Snippets {
if has('python3')
    Plug 'ncm2/ncm2-ultisnips'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'epilande/vim-es2015-snippets'
    Plug 'epilande/vim-react-snippets'
endif
" }

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

call plug#end()

call SourceDirectory('~/.vim/settings')

colorscheme nord

" Enable python support
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
