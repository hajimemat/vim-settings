au MyAutoCmd FileType vim call LoadMySource("types/vim.vim")
au MyAutoCmd FileType tex call LoadMySource("types/tex.vim")
au MyAutoCmd BufRead,BufNewFile *.tex set filetype=tex
