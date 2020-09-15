" let g:neoformat_enabled_javascript = ['prettiereslint']

" augroup NeoformatAutoFormat
"     autocmd!
"     autocmd FileType javascript,javascript.jsx setlocal formatprg=eslintprettier
"     autocmd BufWritePre *.js,*.jsx Neoformat
" augroup END
