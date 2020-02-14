syntax on
set softtabstop=2
set spelllang=en_us,it_it
setlocal nospell
set guifont=Monospace\ 14
colorscheme slate
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let g:markdown_fenced_languages = ['html', 'javascript', 'bash=sh']
