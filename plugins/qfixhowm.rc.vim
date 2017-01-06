" --------------------------------------------
" メモ機能
" --------------------------------------------

" キーマップ
let QFixHowm_Key = 's'
let QFixHowm_KeyB= 'j'

" メモを保存するディレクトリ
let howm_dir = '~/gdrive-share/memo'

" メモファイル
let howm_filename = '%Y/%Y-%m-%d-%H%M%S.md'
let QFixHowm_QuickMemoFile = hostname().'/Qmem-%Y-00-00-000000.md'
let QFixHowm_DiaryFile = hostname().'/%Y/%m/%Y-%m-%d-000000.md'

let QFixHowm_FileType =  'markdown'
let QFixHowm_Title = '#'
let QFixHowm_Wiki = 1

let g:QFixHowm_Template  =  [
      \"# %TAG%",
      \""
      \]




" 2016-07-06までの設定 {{{
" let QFixHowm_Key = 'g'
" let howm_dir     = '~/memo/hown'
" " ファイル拡張子をmdにする
" let howm_filename = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
" let QFixHowm_QuickMemoFile = 'Qmem-00-%Y-%m-00-000000.howm'
" let QFixHowm_DiaryFile = 'diary/%Y/%m/%Y-%m-%d.txt'
" let QFixHowm_RecentMode = 2
" }}}

" let howm_dir     = '~/gdrive-share/memo'
" let QFixHowm_Key = 's'
" let QFixHowm_KeyB = 'j'
"
" let hown_filename = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
" let QFixHowm_QuickMemoFile = hostname().'/Qmem-00-0000-00-00-000000.md'
" let QFixHowm_DiaryFile = hostname().'/%Y/%m/%Y-%m-%d-000000.md'
"
" let QFixHowm_FileType = 'markdown'
" let QFixHowm_Title = '#'
" let QFixHowm_Wiki = 1
"
" "テンプレート
" let g:QFixHowm_Template = [
"   \"# %TAG%",
"   \""
" \]

" nnoremap <howm> <nop>
" nmap <snora>m <howm>
" " nmap <howm>a howm
"
" let howm_dir     = g:nora_howm_dir
" let QFixHowm_Key = '<howm>'
" let QFixHowm_KeyB = ''
" let howm_filename = '%Y/%m/%Y-%m-%d-%H%M%S.mkd'
" "let QFixHowm_FileType = 'qfix_memo.markdowm'
" "let QFixHowm_FileType = 'markdowm'
" let QFixHowm_FileType = ''
" let QFixHowm_Title = '#'
" let QFixHowm_Autoformat = 1
" let QFixHowm_Autoformat_TitleMode = 1
" let QFixHowm_SaveTime = -1
" " クイックメモのファイル名
" let QFixHowm_QuickMemoFile = hostname().'-00-%Y-%m-00-000000.mkd'
" "日記のファイル名
" let QFixHowm_DiaryFile = '%Y/%m/%Y-%m-%d-000000.mkd'
"
" "テンプレート
" let g:QFixHowm_Template = [
"   \"# %TAG%",
"   \""
" \]
"
" let g:WFixMRU_Title = {}
" let g:WFixMRU_Title['mkd'] = '^###[^#]'
" let g:WFixMRU_Title['mkd_"regxp'] = '^###[^#]'
