"---------------------------------------------------------------------------
" Uniteの設定
"
let gunite_enable_auto_select = 0

call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'direction': 'topleft',
\   'short_source_names' : 1
\ })

" call unite#custom#profile('default', 'context', {
" \   'start_insert': 1,
" \   'direction': 'botright',
" \   'short_source_names' : 1
" \ })
"
" if executable('ag')
"   " echo 'enable ag:'
"   let g:unite_source_grep_command = 'ag'
"   let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
"   let g:unite_source_grep_recursive_opt = ''
" endif
"
" function! s:unite_settings() " {{{
"
"   " imap <buffer>  <BS>      <Plug>(unite_delete_backward_path)
"   imap <buffer>  jj        <Plug>(unite_insert_leave)
"   imap <buffer>  <Tab>     <Plug>(unite_complete)
"   imap <buffer> '          <Plug>(unite_quick_match_default_action)
"   nmap <buffer> '          <Plug>(unite_quick_match_default_action)
"   nmap <buffer> cd         <Plug>(unite_quick_match_default_action)
"   nmap <buffer> <C-z>      <Plug>(unite_toggle_transpose_window)
"   imap <buffer> <C-z>      <Plug>(unite_toggle_transpose_window)
"   imap <buffer> <C-w>      <Plug>(unite_delete_backward_path)
"   nmap <buffer> <C-j>      <Plug>(unite_toggle_auto_preview)
"   imap <silent><buffer><expr> <C-s> unite#do_action('split')
"   imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
"   imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
"   imap <silent><buffer> <C-j> <Plug>(unite_select_previous_line)
"   imap <silent><buffer> <C-k> <Plug>(unite_select_next_line)
"
"   nnoremap <silent><buffer> <Tab>     <C-w>w
"   nnoremap <silent><buffer><expr> l
"         \ unite#smart_map('l', unite#do_action('default'))
"   nnoremap <silent><buffer><expr> P
"         \ unite#smart_map('P', unite#do_action('insert'))
"
"
"   " バッファ名で処理を切り替える
"   let unite = unite#get_current_unite()
"   if unite.profile_name ==# '^search' || unite.profile_name ==# '^grep'
"     nnoremap <silent><buffer><expr> r     unite#do_action('replace')
"   else
"     nnoremap <silent><buffer><expr> r     unite#do_action('rename')
"   endif
"
"   nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
"   nnoremap <silent><buffer><expr> vsp    unite#do_action('vsplit')
"   nnoremap <silent><buffer><expr> sp    unite#do_action('split')
"   nnoremap <silent><buffer><expr> !     unite#do_action('start')
"
"   nnoremap <silent><buffer><expr> <c-v>    unite#do_action('vsplit')
"
"   nmap <buffer> x <Plug>(unite_quick_match_jump)
"
"   " Git操作 {{{
"   " Uniteのフック置き場
"   let s:unite_hooks = {}
"   function! s:unite_hooks.giti_status() "{{{
"     nnoremap <silent><buffer><expr>gM unite#do_action('ammend')
"     nnoremap <silent><buffer><expr>gm unite#do_action('commit')
"     nnoremap <silent><buffer><expr>ga unite#do_action('stage')
"     nnoremap <silent><buffer><expr>gc unite#do_action('checkout')
"     nnoremap <silent><buffer><expr>gd unite#do_action('diff')
"     nnoremap <silent><buffer><expr>gu unite#do_action('unstage')
"   endfunction"}}}
"   " }}}
"
"   for source in unite#get_current_unite().sources
"     let source_name = substitute(source.name, '[-/]', '_', 'g')
"     if !empty(source_name) && has_key(s:unite_hooks, source_name)
"       call s:unite_hooks[source_name]()
"     endif
"   endfor
"
" 	" "ESCでuniteを終了
" 	" nmap <buffer> <ESC> <Plug>(unite_exit)
" 	" "入力モードのときjjでノーマルモードに移動
" 	" imap <buffer> jj <Plug>(unite_insert_leave)
" 	" "入力モードのときctrl+wでバックスラッシュも削除
" 	" imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
"   "
" 	" " "ctrl+jで縦に分割して開く
" 	" " nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" 	" " inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" 	" " "ctrl+lで横に分割して開く
" 	" " nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" 	" " inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" 	" " "ctrl+oでその場所に開く
" 	" " nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
" 	" " inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
" 	" nnoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
" 	" inoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
" 	" nnoremap <silent> <buffer> <expr> t unite#do_action('tabopen')
" 	" nnoremap <silent> <buffer> <expr> o unite#do_action('split')
" 	" nnoremap <silent> <buffer> <expr> O unite#do_action('split')
" 	" nnoremap <silent> <buffer> <expr> v unite#do_action('vsplit')
" 	" inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
" 	" inoremap <silent> <buffer> <expr> <C-o> unite#do_action('vsplit')
" 	" imap <buffer> <C-k>     <ESC><Plug>(unite_select_previous_line)
" 	" imap <buffer> <C-j>     <ESC><Plug>(unite_select_next_line)
" 	" inoremap <buffer> <C-l>     <ESC>:q<CR>
" 	" for source in unite#get_current_unite().sources
" 	" 	let source_name = substitute(source.name, '[-/]', '_', 'g')
" 	" 	if !empty(source_name) && has_key(s:unite_hooks, source_name)
" 	" 		call s:unite_hooks[source_name]()
" 	" 	endif
" 	" endfor
" endfunction"}}}
"
" autocmd NoraAutoCmd FileType unite call s:unite_settings()
