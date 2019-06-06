
" Autoinstall vim-plug if missing {
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" }

call plug#begin('~/.config/nvim/plugged')

" Editing {
Plug 'ntpeters/vim-better-whitespace'                                  " Trailing whitespace highlighting & automatic fixing
Plug 'rstacruz/vim-closer'                                             " auto-close plugin
Plug 'easymotion/vim-easymotion'                                       " Improved motion in Vim
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}} " Intellisense Engine
Plug 'christoomey/vim-tmux-navigator'                                  " Tmux/Neovim movement integration
Plug 'Shougo/denite.nvim'                                              " Denite - Fuzzy finding, buffer management
Plug 'Shougo/echodoc.vim'                                              " Print function signatures in echo area
Plug 'tpope/vim-surround'                                              " Change surrounding symbols easily
Plug 'scrooloose/nerdcommenter'                                        " Comment lines
Plug 'junegunn/vim-easy-align'                                         " Align symbols vertically in selection
Plug 'janko-m/vim-test'                                                " Run tests without leaving vim
Plug 'majutsushi/tagbar'                                               " Show tags in a sidebar
" }

" Snippets {
Plug 'Shougo/neosnippet' " Snippet support
Plug 'Shougo/neosnippet-snippets'
" }

" Git {
Plug 'mhinz/vim-signify' " Enable git changes to be shown in sign column
Plug 'tpope/vim-fugitive'
" }

" Javascript {
Plug 'HerringtonDarkholme/yats.vim' " Typescript syntax highlighting
Plug 'mxw/vim-jsx'                  " ReactJS JSX syntax highlighting
Plug 'heavenshell/vim-jsdoc'        " Generate JSDoc commands based on function signature
" }

" Syntax Highlighting {
Plug 'chr4/nginx.vim'                         " Syntax highlighting for nginx
Plug 'othree/javascript-libraries-syntax.vim' " Syntax highlighting for javascript libraries
Plug 'othree/yajs.vim'                        " Improved syntax highlighting and indentation
Plug 'dag/vim-fish'                           " Fish files syntax highlighting
" }

" UI {
Plug 'scrooloose/nerdtree'      " File explorer
"Plug 'arcticicestudio/nord-vim' " Colorscheme
Plug 'morhetz/gruvbox'          " Colorscheme
Plug 'vim-airline/vim-airline'  " Customized vim status line
Plug 'ryanoasis/vim-devicons'   " Icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" }

" Initialize plugin system
call plug#end()
