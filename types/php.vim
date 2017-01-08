" --------------------------
" php編集
" --------------------------
" let g:syntastic_check_on_open = 1
" let g:syntastic_enable_signs = 1
" let g:syntastic_echo_current_error = 1
" let g:syntastic_auto_loc_list = 2
" let g:syntastic_enable_highlighting = 1
" let g:syntastic_php_php_args = '-l'
" setlocal statusline+=%#warningmsg#
" setlocal statusline+=%{SyntasticStatuslineFlag()}
" setlocal statusline+=%*

" let g:syntastic_php_checkers = ['php']
" let g:syntastic_php_phpcs_args=
let g:syntastic_php_php_args='-l'
" PHP用の辞書を設定
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['php']
      \}
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_highlighting = 1

echom 'this is php'
