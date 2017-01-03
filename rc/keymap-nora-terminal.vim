"---------------------------------------------------------------------------
" ターミナルモードの設定

"tnoremap <ESC> <C-\><C-n>
tnoremap <C-l><C-l> <C-\><C-n>

" TMUX的に扱う為の設定
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>c <C-\><C-n>:<C-u>tabe term://zsh<CR>i
tnoremap <C-w>s <C-\><C-n>:<C-u>sp term://zsh<CR>i
tnoremap <C-w>v <C-\><C-n>:<C-u>vsp term://zsh<CR>i
tnoremap <C-w>p <C-\><C-n>p
tnoremap <C-w>y <C-\><C-n>v
tnoremap <C-w><C-w> <C-w>
"tnoremap jk <ESC>
