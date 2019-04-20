"autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Symbols
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let NERDTreeIgnore=['\~$', 'node_modules', '__pycache__', '\.pyc$', 'htmlcov', '\.git', '\.*cache$', '\.idea', '\.vscode', '\.DS_Store', '\.coverage']
let NERDTreeShowHidden=1


" Mappings
map <C-n> :NERDTreeToggle<CR>
