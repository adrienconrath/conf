
" Options:{{{
"------------------------------------------------------------------------------
" Folds use markers {{{ and }}}
set foldmethod=marker
" Commands that are able to open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

"}}}
" Mappings:{{{
"------------------------------------------------------------------------------
" Unfold all folds in file
noremap <silent>	ZO	ggvGzO
" Fold all folds in file
noremap <silent>	ZC	ggvGzc



"}}}
