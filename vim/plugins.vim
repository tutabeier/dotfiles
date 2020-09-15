call plug#begin('~/.vim/plugged')

" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'

" Syntax highlighting for JSON in Vim
Plug 'elzr/vim-json', { 'for': 'json' }

" Go development plugin for Vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

" Use RipGrep in Vim and display results in a quickfix list
Plug 'jremmen/vim-ripgrep', { 'on': 'Rg' }

"A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim', { 'on': ['Files', 'GFiles', 'Buffers'] }

"A (Neo)vim plugin for formatting code.
Plug 'sbdchd/neoformat'

"A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

"Comment stuff out
Plug 'tpope/vim-commentary'

"A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

"A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

"lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

"Delete all the buffers except the current/named buffer
Plug 'vim-scripts/BufOnly.vim', { 'on': 'BufOnly' }

"A code-completion engine for Vim: http://valloric.github.io/YouCompleteMe/
Plug 'Valloric/YouCompleteMe'

" Delete buffers and close files in Vim without closing your windows or messing up your layout.
Plug 'moll/vim-bbye'

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" markdown preview plugin for (neo)vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
