au MyAutoCmd FileType vim call LoadMySource("types/vim.vim")

" tex
au MyAutoCmd FileType tex call LoadMySource("types/tex.vim")
au MyAutoCmd BufRead,BufNewFile *.tex set filetype=tex

" markdown
au MyAutoCmd FileType markdown call LoadMySource("types/markdowm.vim")
au MyAutoCmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

" make
au MyAutoCmd FileType make call LoadMySource("types/make.vim")
au MyAutoCmd BufNewFile,BufRead *.mk set filetype=make
