autocmd FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>
autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>
let g:godef_split=3 """左右打开新窗口的时候
let g:godef_same_file_in_same_window=1 """函数在同一个文件中时不需要打开新窗口
