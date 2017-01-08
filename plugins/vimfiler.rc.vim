" 
" VimFilerのカスタマイズ
"

" 拡張子別の開き方
call vimfiler#set_execute_file('txt', 'notepad')
call vimfiler#set_execute_file('c', ['gvim', 'notepad'])
call vimfiler#set_execute_file('png', 'hef')

" デフォルトのファイラにする
let g:vimfiler_as_default_explorer = 1
	
" Enable file operation commands.
" Edit file by tabedit.
" call vimfiler#custom#profile('default', 'context', {
"      \ 'safe' : 0,
"      \ 'edit_action' : 'tabopen',
"      \ })


" VimfilerHelp{{{
" Normal mode default mappings.
" {lhs}			{rhs}
" --------		-----------------------------
" <Tab> (default)
" 			<Plug>(vimfiler_switch_to_another_vimfiler)
" <Tab> (enabled "no-quit" and "split" options)
" 			<Plug>(vimfiler_switch_to_other_window)
" j			<Plug>(vimfiler_loop_cursor_down)
" k			<Plug>(vimfiler_loop_cursor_up)
" gg			<Plug>(vimfiler_cursor_top)
" <C-l>			<Plug>(vimfiler_redraw_screen)
" <Space>			<Plug>(vimfiler_toggle_mark_current_line)
" <S-LeftMouse>		<Plug>(vimfiler_toggle_mark_current_line)
" <S-Space>		<Plug>(vimfiler_toggle_mark_current_line_up)
" *			<Plug>(vimfiler_toggle_mark_all_lines)
" #			<Plug>(vimfiler_mark_similar_lines)
" U			<Plug>(vimfiler_clear_mark_all_lines)
" c			<Plug>(vimfiler_copy_file)
" m			<Plug>(vimfiler_move_file)
" d			<Plug>(vimfiler_delete_file)
" Cc			<Plug>(vimfiler_clipboard_copy_file)
" Cm			<Plug>(vimfiler_clipboard_move_file)
" Cp			<Plug>(vimfiler_clipboard_paste)
" r			<Plug>(vimfiler_rename_file)
" K			<Plug>(vimfiler_make_directory)
" N			<Plug>(vimfiler_new_file)
" <Enter>			<Plug>(vimfiler_cd_or_edit)
" o			<Plug>(vimfiler_expand_or_edit)
" l			<Plug>(vimfiler_smart_l)
" x			<Plug>(vimfiler_execute_system_associated)
" X			<Plug>(vimfiler_execute_vimfiler_associated)
" h			<Plug>(vimfiler_smart_h)
" L			<Plug>(vimfiler_switch_to_drive)
" ~			<Plug>(vimfiler_switch_to_home_directory)
" \			<Plug>(vimfiler_switch_to_root_directory)
" &			<Plug>(vimfiler_switch_to_project_directory)
" <C-j>			<Plug>(vimfiler_switch_to_history_directory)
" <BS>			<Plug>(vimfiler_switch_to_parent_directory)
" .			<Plug>(vimfiler_toggle_visible_ignore_files)
" H			<Plug>(vimfiler_popup_shell)
" e			<Plug>(vimfiler_edit_file)
" E			<Plug>(vimfiler_split_edit_file)
" B			<Plug>(vimfiler_edit_binary_file)
" ge			<Plug>(vimfiler_execute_external_filer)
" <RightMouse>		<Plug>(vimfiler_execute_external_filer)
" !			<Plug>(vimfiler_execute_shell_command)
" q			<Plug>(vimfiler_hide)
" Q			<Plug>(vimfiler_exit)
" -			<Plug>(vimfiler_close)
" g?			<Plug>(vimfiler_help)
" v			<Plug>(vimfiler_preview_file)
" O			<Plug>(vimfiler_sync_with_current_vimfiler)
" go			<Plug>(vimfiler_open_file_in_another_vimfiler)
" <C-g>			<Plug>(vimfiler_print_filename)
" g<C-g>			<Plug>(vimfiler_toggle_maximize_window)
" yy			<Plug>(vimfiler_yank_full_path)
" M			<Plug>(vimfiler_set_current_mask)
" gr			<Plug>(vimfiler_grep)
" gf			<Plug>(vimfiler_find)
" S			<Plug>(vimfiler_select_sort_type)
" <C-v>			<Plug>(vimfiler_switch_vim_buffer_mode)
" gc			<Plug>(vimfiler_cd_vim_current_dir)
" gs			<Plug>(vimfiler_toggle_safe_mode)
" gS			<Plug>(vimfiler_toggle_simple_mode)
" a			<Plug>(vimfiler_choose_action)
" Y			<Plug>(vimfiler_pushd)
" P			<Plug>(vimfiler_popd)
" t			<Plug>(vimfiler_expand_tree)
" T			<Plug>(vimfiler_expand_tree_recursive)
" I			<Plug>(vimfiler_cd_input_directory)
" <2-LeftMouse>		<Plug>(vimfiler_double_click)
" gj			<Plug>(vimfiler_jump_last_child)
" gk			<Plug>(vimfiler_jump_first_child)
"
" Visual mode mappings.
" {lhs}			{rhs}
" --------		-----------------------------
" <Space>			<Plug>(vimfiler_toggle_mark_selected_lines) 
" }}}

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
  " Jが押されたらディレクトリ履歴を開く
  nnoremap <silent><buffer> J
    \ <C-u>:Unite -buffer-name=files
    \ -default-action=lcd directory_mru<CR>

  nnoremap <silent><buffer><expr> gy vimfiler#do_action('tabopen')
  nmap <buffer> cd <Plug>(vimfiler_cd_vim_current_dir)
  nmap <buffer> f <Plug>(vimfiler_find)
  nmap <buffer> gg <Plug>(vimfiler_grep)
  nnoremap <silent><buffer><expr> t vimfiler#do_action('tabopen')
  nmap <buffer> T <Plug>(vimfiler_expand_tree_recursive)
  nmap <buffer> <Tab> <Plug>(vimfiler_switch_to_other_window)
endfunction"}}}

autocmd MyAutoCmd FileType vimfiler call s:vimfiler_settings()
