" マップリーダを変更する


" 間違えそうなバインドを調整(事故の素) 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
cmap w1 w!
cmap q1 q!

" 使いたくないバインドを殺す
nnoremap ZZ <Nop>
" ZQで終了させない
nnoremap ZQ <Nop>
" QでEXモードに入れない
nnoremap Q <Nop>

" jjでエスケープ
inoremap jj    <ESC>
inoremap <C-l> <ESC>
inoremap <C-l> <ESC>
vnoremap <C-l> <ESC>


" 行移動は表示にあわせる
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" 右移動は折りたたみを開くも兼ねる
nnoremap <expr>l  foldclosed('.') != -1 ? 'zo' : 'l'


nnoremap <silent>M :<C-u>AutoMarkrement<CR>
cnoremap w!! w ! sudo tee %

"---------------------------------------------------------------------------
" ターミナルモードの設定
tnoremap <C-l><C-l> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>
vmap v <Plug>(expand_region_expand)
" nnoremap <silent> <leader><leader> :source %<CR>
" inoremap <C-h> <esc>:aaa
" vnoremap <C-h> <esc>:aaa
" echo 'loaded $(date)'
"
" set t_kb=<BS><hh<BS>h
"
" set c_h = 
" inoremap hh
"
