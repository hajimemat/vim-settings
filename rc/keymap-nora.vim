" ノラ用マップリーダを作成する
noremap <nora> <NOP>
map     <C-f>  <nora>
imap    <C-f>  <ESC><nora>
" Alignta <<1:0 <\| [
execute 'nnoremap '.g:nora['leader'].'   <NOP>'
execute 'nmap '.g:nora['leader'].'   <nora>'
execute 'vmap '.g:nora['leader'].'   <nora>'

" Window操作用リーダを作成する
noremap <snora> <NOP>
nnoremap <snora> <NOP>
cnoremap <snora> <NOP>
execute 'nnoremap '.g:nora['super'].'   <NOP>'
execute 'nmap '.g:nora['super'].'   <snora>'
execute 'vmap '.g:nora['super'].'   [nora::window]'

" VIMの設定ファイルを再読み込みさせる
nnoremap <silent><nora>r :source ~/.vimrc<CR>

" ペーストモードを切り替える
nnoremap <nora>p :set paste!<CR>
vmap <nora>a :Alignta 

" コメントアウトトグル
nnoremap <silent><nora>co :TComment<CR>
vmap     <silent><nora>co :TComment<CR>
nnoremap <silent><snora>s <ESC>


" Windowの操作 {{{
nnoremap  <silent>  <C-S-l>   <C-w>>
nnoremap  <silent>  <C-S-h>   <C-w><
nnoremap  <silent>  <C-s-k>   <C-w>+
nnoremap  <silent>  <C-s-j>   <C-w>-
" }},
"
nnoremap <silent><snora><s-e> :<C-u>VimFilerCreate 
      \ -explorer -parent -split -simple -winwidth=35 -no-quit<CR>
nnoremap <silent><snora>e :<C-u>VimFilerBufferDir
      \ -toggle -explorer -parent -split -simple -winwidth=35 -no-quit<CR>


" セッションの保存
nnoremap <silent><nora>ss :<C-u>execute "mksession! " v:this_session<CR>:echo "Session saved to" v:this_session<CR>


"---------------------------------------------------------------------------
" けんぬ互換
nnoremap <silent><c-e> :<C-u>VimFilerBufferDir
  \ -toggle
  \ -explorer
  \ -parent 
  \ -split
  \ -simmple
  \ -winwidth=35
  \ -no-quit<CR>

" Speceキー
"nnoremap <SPACE> <PageDown>
"nnoremap <S-SPACE> <PageUp>
call LoadMySource('rc/keymap-nora-unite.vim')
