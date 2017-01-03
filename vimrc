if &compatible
  set nocompatible               " Be iMproved
endif

" ------------------------------------------------
" 設定
" ------------------------------------------------

"let mapleader = "\<Space>"

" VIMRC用のディレクトリ
let g:my_vimrc_path='~/vimrc'
let g:dein_dir='~/.cache/dein'

" Nora設定
let g:nora = {
  \ 'leader': '<SPACE>',
  \ 'super': 's',
  \ 'enable': 1
  \ }

" 使いたいものだけ定義する
" 例: dein
" 読み込まれるtoml: vimrc/toml/dein.toml
" 読み込まれるtoml: vimrc/toml/dein_lazy.toml
let g:my_pakages = [
 \ 'dein', 
 \ 'unite',
 \ 'extra'
 \ ]


"---------------------------------------------------------------------------
" 判定
"---------------------------------------------------------------------------
let s:is_windows = has('win16') || has('win32') || has('win64')
let s:is_cygwin  = has('win32unix')
let s:is_nvim    = has('nvim')
let s:has_lua    = has('lua')
let has_python   = has('python') && executable('python')
let has_python3  = has('python3') && executable('python3')
"---------------------------------------------------------------------------

" ------------------------------------------------

" SOURCEローダ
function! LoadMySource(path)
  " echom 'source '.g:my_vimrc_path.'/'.a:path
  execute 'source '.expand(g:my_vimrc_path).'/'.a:path
endfunction


" ロード時のみ実行させる
call LoadMySource("rc/init.vim")

" プラグインを使わないベーシックな設定
call LoadMySource("rc/basic.vim")

" ファイルタイプ別の設定
call LoadMySource("rc/types.vim")

" DEINのインストール
call LoadMySource("rc/dein.vim")

" マッピング
call LoadMySource("rc/keymap.vim")

" NORAキーマッピング
if g:nora['enable']
  call LoadMySource("rc/keymap-nora.vim")
endif
syntax enable
