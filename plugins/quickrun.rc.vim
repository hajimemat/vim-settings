" nmap <space>q <Plug>(precious-quickrun-op)
" omap ic <Plug>(textobj-precious-i)
" vmap ic <Plug>(textobj-precious-i)

let g:quickrun_config = {
\ "_" : {
\  "runner" : "vimproc",
\  "runner/vimproc/updatetime" : 60
\ }
\}

nmap <silent><leader>q :QuickRun<CR>
nmap <silent><leader>Q :w<CR>:QuickRun<CR>
