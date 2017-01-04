" Uniteを操作系のマッピング

" Uniteの操作 {{{
function! s:my_unite_mapping() abort
  " <nora>y ヤンクリスト
  nnoremap <silent> <nora>y :<C-u>Unite -buffer-name=yank history/yank<CR>
  nnoremap <silent> <nora>h :<C-u>Unite -buffer-name=history file_mru file file/new<CR>
  nnoremap <silent> <nora>b :<C-u>Unite buffer bookmark<CR>
  nnoremap <silent> <nora>B :<C-u>UniteBookmarkAdd<CR>
  nnoremap <silent> <nora>o :<C-u>Unite -no-start-insert -resume fold outline mark<CR>
  nnoremap <silent> <nora>o :<C-u>Unite -no-start-insert -resume  fold outline<CR>
  nnoremap <silent> <nora>F :<C-u>Unite file file/new directory/new<CR>
  nnoremap <silent> <nora>f :<C-u>UniteWithBufferDir file file/new directory/new<CR>
  nnoremap <silent> <nora>m :<C-u>Unite qfixhowm qfixhowm/new <CR>
  nnoremap <silent> <nora>T :<C-u>Unite tweetvim<CR>
  nnoremap <silent> <nora>H :<C-u>Unite hateblo-list <CR>
  " <snora>w 切り替え
  nnoremap <silent> <snora>w :<C-u>Unite -force-immediately window:all:no-current<CR>
  " " <snora>gt ウィンドウリスト
  " nnoremap <silent> <snora>gt :<C-u>Unite -auto-resize -select=`tabpagenr()-1` tab<CR>
  nnoremap <silent> <snora>g :Unite giti/status -horizontal<CR>
endfunction

" }}}

" Gitの操作 {{{
" nnoremap <silent>gc :Gcommit<CR>
" nnoremap <silent>gm :Gcommit<CR>
" nnoremap <silent>gM :Gcommit --amend<CR>
" nnoremap <silent>gb :Gblame<CR>
" nnoremap <silent>gB :Gbrowse<CR>
" nnoremap <silent>gs :Unite giti/status -horizontal<CR>
" nnoremap <silent>gl :Unite giti/log -horizontal<CR>
" nnoremap <silent>gs :Unite giti/status -horizontal<CR>
" nnoremap <silent>gh :Unite giti/branch_all<CR>
" }}}

if dein#tap('unite.vim')
  call s:my_unite_mapping()
else
  call dein#set_hook('unite.vim', 'hook_add', function('s:my_unite_mapping'))
endif

