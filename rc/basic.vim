set number
set hidden
set timeout timeoutlen=500
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set modeline
set modelines=5

set ignorecase " 検索時に大文字小文字を無視
set smartcase  " ただし、検索文字に大文字小文字があれば無視しない
set nohlsearch " 検索文字をハイライトしない

" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" マーカーの設定 {{{
" mark auto reg
" http://saihoooooooo.hatenablog.com/entry/2013/04/30/001908
if !exists('g:markrement_char')
	let g:markrement_char = [
				\     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
				\     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
				\ ]
endif
function! s:AutoMarkrement()
	if !exists('b:markrement_pos')
		let b:markrement_pos = 0
	else
		let b:markrement_pos = (b:markrement_pos + 1) % len(g:markrement_char)
	endif
	execute 'mark' g:markrement_char[b:markrement_pos]
	echo 'marked' g:markrement_char[b:markrement_pos]
endfunction
" }}}
command! -nargs=0 AutoMarkrement call <SID>AutoMarkrement()

cmap w!! :<c-u>w ! sudo tee > /dev/null %

function! s:get_mapping_list(map_cmd) abort
    redir => mapping_str
    silent! execute a:map_cmd
    redir END

    let mapping_list = []
    let mapping_lines = split(mapping_str, '\n')
    let mapping_lines = filter(copy(mapping_lines), "v:val =~ '\\s\\+\\*\\?@'") + filter(copy(mapping_lines), "v:val !~ '\\s\\+\\*\\?@'")
    for line in map(mapping_lines, "substitute(v:val, '<NL>', '<C-J>', 'g')")
        " attribute
        let attr = ''

        " right
        let map_rhs = matchstr(line, '^\a*\s*\S\+\s*\zs.*\ze\s*')
        if map_rhs =~ '^\*\s.*'
            let map_rhs = map_rhs[2:]
            let attr = '*'
        endif

        " left
        let map_lhs = matchstr(line, '^\a*\s*\zs\S\+')
        if map_lhs =~ '^<SNR>' || map_lhs =~ '^<Plug>'
            continue
        endif
        let map_lhs = substitute(map_lhs, '<NL>', '<C-j>', 'g')
        let map_lhs = substitute(map_lhs, '\(<.*>\)', '\1', 'g')

        call add(mapping_list, [map_lhs, map_rhs, attr])
    endfor

    return mapping_list
endfunction

let s:is_term_map_enable = 1
function! s:toggle_terminal_map() abort
    if s:is_term_map_enable == 1
        let g:toggle_mapinfo_list = <SID>get_mapping_list('tmap')
        " Disable
        for mapinfo in g:toggle_mapinfo_list
            echo mapinfo[0]
            execute 'tunmap' mapinfo[0]
        endfor
        let s:is_term_map_enable = 0
    else
        " Enable
        for mapinfo in g:toggle_mapinfo_list
            let map_cmd = (mapinfo[2] == '*') ? ('tnoremap') : ('tmap')
            execute map_cmd mapinfo[0] mapinfo[1]
        endfor
        let s:is_term_map_enable = 1
    endif
endfunction

command! -nargs=0 ToggleTerminaMap call <SID>toggle_terminal_map()

" vim: set ft=vim : 
