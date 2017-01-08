"if exists('g:loaded_vimrc_init')
"	:finish
"endif

let g:loaded_vimrc_init = 1

"
" 起動時にしか読み込まれない
"
let $CACHE = expand(g:cache_dir)
let $BACKUP = expand(g:backup_dir)
let $TMP = expand(g:tmp_dir)
let $UNDO = expand(g:undo_dir)

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

if !isdirectory(expand($BACKUP))
  call mkdir(expand($BACKUP), 'p')
endif

if !isdirectory(expand($TMP))
  call mkdir(expand($TMP), 'p')
endif

if !isdirectory(expand($UNDO))
  call mkdir(expand($UNDO), 'p')
endif
"

augroup MyAutoCmd
    autocmd!
augroup END

" vim: set ft=vim : 
