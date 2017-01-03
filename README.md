# VIMをセットアップするツール

1. 設定ファイル群
2. インストール用makefile

## 使い方(archlinux)

```sh
$ make -f archlinux.mk
```

## 設定
```vim
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

```
## ファイル構成

* vimrc
* types/各ファイルタイプ別の設定
* toml/plugnのインストール設定
* rc/起動時に読み込まれるファイル
* plugins/plugin起動時に読み込まれるファイル

```
.
├── README.md
├── archlinux.mk
├── plugins
│   ├── qfixhowm.rc.vim
│   ├── quickrun.rc.vim
│   ├── unite.rc.vim
│   ├── vimfiler.rc.vim
│   ├── vimshell.rc.vim
│   └── vimtex.rc.vim
├── rc
│   ├── basic.vim
│   ├── dein.vim
│   ├── init.vim
│   ├── keymap-nora-terminal.vim
│   ├── keymap-nora-unite.vim
│   ├── keymap-nora.vim
│   ├── keymap.vim
│   └── types.vim
├── toml
│   ├── dein.toml
│   ├── dein_lazy.toml
│   ├── extra.toml
│   ├── extra_lazy.toml
│   └── unite_lazy.toml
├── types
│   ├── tex.vim
│   └── vim.vim
└── vimrc
```

## キーマップ

|mode|キー|割当|備考|
|:--:|:--|:--:|:--:|
|normal|;|:|誤操作防止|
|command|w1|w!|誤操作防止|
|command|q1|q!|誤操作防止|
|normal|ZZ|none|誤操作防止|
|normal|ZQ|none|誤操作防止|
|normal|Q|none|誤操作防止|
|insert|jj|ESC|モード移動を便利に|
|insert,normal,visual|CTRL-l|ESC|モード移動を便利に|
|normal|j|gj|移動を直感的に|
|normal|k|gk|移動を直感的に|
|normal|gj|j|移動を直感的に|
|normal|gk|k|移動を直感的に|

|mode|キー|割当|備考|
|:--:|:--|:--:|:--:|
|insert,normal,visual|c-f|nora|NORAキー|
|normal|space|nora|NORAキー|
|normal|s|snora|SUPER NORAキー|
|normal|nora+r|vimrcを再読込||
|normal|nora+p|:set paste!|ペーストモード切り替え|
|normal|nora+a|:Alignta|整列|
|normal|nora+h|Unite history|ファイルヒストリ|
|normal|snora+e|vimfiler|ファイルエクスプローラを表示|

など、詳しくは rc/keymap-nora.vim参照
