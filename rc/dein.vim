let s:dein_dir = expand(g:dein_dir)
let s:dein_repo_dir = s:dein_dir.'/repos/github.com/Shougo/dein.vim'

filetype plugin indent off

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


" 設定開始
call dein#begin(s:dein_dir)

" VimProcをインストール
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

for s:name in g:my_pakages
  let s:toml = expand(g:my_vimrc_path).'/toml/'.s:name.".toml"
  let s:lazy_toml = expand(g:my_vimrc_path).'/toml/'.s:name."_lazy.toml"
  if filereadable(s:toml)
    call dein#load_toml(s:toml,      {'lazy': 0})
    "echom s:toml.' loaded'
  endif
  if filereadable(s:lazy_toml)
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    "echom s:lazy_toml.' loaded'
  endif
endfor

" deopleteをインストール
call dein#add('Shougo/deoplete.nvim')
if dein#check_install(['deoplete.nvim'])
  call dein#install(['deoplete.nvim'])
endif

call deoplete#enable()
autocmd MyAutoCmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd MyAutoCmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd MyAutoCmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd MyAutoCmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd MyAutoCmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
let g:deoplete#delimiter_patterns = {'php': ['->', '::', '\']}
let g:deoplete#sorces             = {'_':  ['file', 'dictionary', 'buffer']}


" 設定終了
call dein#end()


" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
