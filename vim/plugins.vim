
" Variables:{{{
"------------------------------------------------------------------------------
" OmniCPP
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_DefaultNamespaces = ["std"]
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_SelectFirstItem = 2

" Autofile
let me_name = 'Adrien Conrath'
let me_mail = 'adrienconrath@gmail.com'

" SuperTab
let g:SuperTabCrMapping = 0

" Syntastic
"let syntastic_enable_signs = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_disabled_filetypes = ['tex']
"let g:syntastic_check_on_open = 0
"let g:syntastic_cpp_compiler_options = ' -std=c++11'
"let g:syntastic_quiet_warnings = 1

" NERDTree
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeWinPos = 'right'

" Taglist
let g:Tlist_GainFocus_On_ToggleOpen = 1

"}}}
" Mappings:{{{
"------------------------------------------------------------------------------
" FuzzyFinder
nmap <silent> <unique> <SPACE>o :FufBuffer<CR> 
nmap <silent> <unique> <SPACE>f :FufFile<CR>
nmap <silent> <unique> <SPACE>d :FufDir<CR>
nmap <silent> <unique> <SPACE>cl :FufChangeList<CR>
nmap <silent> <unique> <SPACE>b :FufBookmarkDir<CR>
nmap <silent> <unique> <SPACE>a :FufBookmarkAddDir<CR>
nmap <silent> <unique> <SPACE><TAB> :FufCoverageFile<CR>
nmap <silent> <unique> <SPACE>e :FufMruFile<CR>
nmap <silent> <unique> <SPACE>c :FufMruCmd<CR>

" NERDTree
map j :NERDTreeToggle `pwd`<RETURN>

" Taglist
map k :TlistToggle <RETURN>

" md-vim
filetype plugin on  " if you don't already have it
au BufNewFile,BufRead *.md set ft=md


"}}}

