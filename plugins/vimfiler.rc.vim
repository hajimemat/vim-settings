"---------------------------------------------------------------------------
" Vimfilerの設定
"
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = ' '
let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_marked_file_icon = '✓'

let g:vimfiler_quick_look_command  = 'gedit'

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

function! s:vimfiler_settings() " {{{
  nnoremap <silent><buffer> J
    \ <C-u>:Unite -buffer-name=files
    \ -default-action=lcd directory_mru<CR>

  nnoremap <silent><buffer><expr> gy vimfiler#do_action('tabopen')
  nmap <buffer> p <Plug>(vimfiler_quick_look)
  nmap <buffer> <Tab> <Plug>(vimfiler_switch_to_other_window)
endfunction"}}}

autocmd MyAutoCmd FileType vimfiler call s:vimfiler_settings()
