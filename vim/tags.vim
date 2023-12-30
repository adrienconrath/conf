
" Functions:{{{
"------------------------------------------------------------------------------
function! s:GenerateCtags()
	silent! execute "! ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
endfunction

"}}}
" Commands:{{{
"------------------------------------------------------------------------------
command! -nargs=0	GenerateCtags		call s:GenerateCtags()


"}}}
" Mappings:{{{
"------------------------------------------------------------------------------
noremap <silent>	<F6>			:GenerateCtags<CR>


"}}}
