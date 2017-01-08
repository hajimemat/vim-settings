"
" 表示設定
"
" Align for vim, 'v/^" \  "
set tabstop=4                   " <TAB>サイズ
set softtabstop=4               " <TAB>入力時のサイズ
set shiftwidth=4                " 自動インデントサイズ
set expandtab                   " タブを空白に変換する

set number                      " 行番号を表示

set ruler                        " 最下部にカーソル位置を表示
"set background=dark              " 背景は代替くらい

set nowrap                       " ウィンドウ幅で折り返す
set textwidth=0                  " 固定折り返し文字幅を持たない
set scrolloff=16                 " スクロールバッファをもたせる
set hidden                       " バッファの挙動

" 分割の方向 {{{
set splitright                   " 横分割は右に
set splitbelow                   " 縦分割は下に
" }}}

" 折りたたみ設定 {{{
set foldmethod=marker
set foldcolumn=0
set fillchars=vert:\|
" set foldlevel=0
" set foldnestmax=2
" }}}

set showmatch                    " 対応する括弧などをハイライト表示する
set matchtime=3                  " 対応括弧のハイライト表示を3秒にする
set matchpairs& matchpairs+=<:>  " 対応括弧に'<'と'>'のペアを追加

set list                         " 不可視文字を表示
"set listchars=tab:▸\ ,trail:-,extends:»,precedes:«,nbsp:%
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:%
"hi NonText ctermbg=0  ctermfg=gray guifg=gray
"hi SpecialKey ctermbg=blue  ctermfg=gray guifg=gray
        
    
set laststatus=2                 " ステータスラインを表示
set cmdheight=2                  " コマンドエリアの高さ
set showcmd                      " タイプ中のコマンドを表示
set novisualbell                 " ベルを停止
set showmode                     " モードを表示
set noshowmode
set belloff=all                  " ベルを停止

" コマンドモードを見やすくする {{{
set nowildmenu
set wildmode=list:longest,full
set wildoptions=tagfile
set winwidth=30
set winheight=20
set completeopt=menuone
set complete=.
set pumheight=20
set cmdwinheight=5
set noequalalways
" }}}
"
" Adjust window size of preview and help.
set previewheight=8
set helpheight=12
set ttyfast
set display=lastline             " 長い行が@にしない

let g:lightline = {
\ 'colorscheme': 'jellybeans',
\ 'component': {
\   'readonly': '%{&readonly?"":""}',
\ },
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' }
\}
