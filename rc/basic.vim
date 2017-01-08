" キータイムアウト
set timeout timeoutlen=500

" モードライン
set modeline
set modelines=5

" 検索設定
set ignorecase " 検索時に大文字小文字を無視
set smartcase  " ただし、検索文字に大文字小文字があれば無視しない
set nohlsearch " 検索文字をハイライトしない
" その他
set directory=$TMP/             " ファイルロケーション
set backupdir=$BACKUP/          " バックアップディレクトリ
set noswapfile                  " Swapは使わない
set backup                      " バックアップは使う
set viminfo='100                " VIMレジストリ保持数
set viminfo+="1000              " VIMINFO保存ファイル
set viminfo+=n$TMP/info         " VimInfoファイル
set backspace=start,eol,indent  " バックスペースで削除可能なものを増やす

set hidden                      " バッファを保存せずに移動できる
set autoread                    " 他の場所で更新されたら自動的に読み込む

if has('persistent_undo') " Undoをファイルに保存する
  set undodir=$UNDO
  set undofile
endif

if executable('xsel')
  set clipboard+=unnamedplus      " クリップボード
endif

command! -nargs=0 ToggleTerminaMap call <SID>toggle_terminal_map()
