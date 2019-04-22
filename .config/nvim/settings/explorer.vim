" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['\~$', '__pycache__', '^\.tags$', '\.pyc$', '\.git$[[dir]]', '\.*cache$', '^\.idea$[[dir]]', '^\.vscode$[[dir]]', '^\.DS_Store$', '\.sass-cache$']
