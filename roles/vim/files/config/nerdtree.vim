" NERDTree biding key
" https://github.com/scrooloose/nerdtree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
