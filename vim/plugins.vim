
" Variables:{{{
"------------------------------------------------------------------------------
" SuperTab
let g:SuperTabCrMapping = 0

" NERDTree
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeWinPos = 'right'

"}}}
" Mappings:{{{
"------------------------------------------------------------------------------

" NERDTree
map j :NERDTreeToggle `pwd`<RETURN>

" md-vim
filetype plugin on  " if you don't already have it
au BufNewFile,BufRead *.md set ft=md


"}}}

