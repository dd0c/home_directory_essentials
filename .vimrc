set background=dark
"filetype plugin indent on
"" show existing tab with 4 spaces width
set tabstop=4
"" " when indenting with '>', use 4 spaces width
set shiftwidth=4
"" " On pressing tab, insert 4 spaces
set expandtab
 
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
