" We have to explicitly `setl' in order to override the system blanket `text'
" filetype for *.txt files.
au BufRead,BufNewFile hg-histedit-*.txt setl ft=hghistedit
