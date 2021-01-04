" 窗口相关快捷键
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
" 更改窗口垂直大小
nnoremap <M--> :resize +3<CR>
nnoremap <M-_> :resize -3<CR>
" 更改窗口水平大小
nnoremap <M-(> :vertical resize -3<CR>
nnoremap <M-)> :vertical resize +3<CR>
" 分割窗口
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>
" 关闭窗口
" nnoremap q <esc>:close<cr>
" vnoremap q <esc>:close<cr>

" 关闭搜索颜色
nnoremap <BackSpace> :nohl<cr>

" jk表示esc
inoremap jk <esc>

" 使用esc退出终端
" if has('nvim')
    " au TermOpen term://* tnoremap <buffer> <Esc> <c-\><c-n> | startinsert
    " au BufEnter term://* startinsert
" else
    " au TerminalOpen term://* tnoremap <buffer> <Esc> <C-\><C-n> | startinsert
    " " au BufEnter term://* startinsert
" endif

" 新建终端
" nnoremap <leader>tt :terminal<cr>

" 插入模式下的一些快捷键
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O
inoremap <M-h> <esc>I
inoremap <M-l> <esc>A

" 两个连续的space保存所有需要保存的文件
" function! s:Wall() abort
    " " 记录当前的tab以及window
    " let tab = tabpagenr()
    " let win = winnr()
    " let seen = {}
    " " 保存当前的buffer
    " if !&readonly && expand("%") !=# ''
        " let seen[bufnr('')] = 1
        " write
    " endif
    " " 在每个标签页每个窗口执行
    " tabdo windo if !&readonly && &buftype =~# '^\%(acwrite\)\=$' && expand('%') !=# '' && !has_key(seen, bufnr('')) | silent write | let seen[bufnr('')] = 1 | endif
    " " 返回之前的tab和window
    " execute 'tabnext '.tab
    " execute win.'wincmd w'
" endfunction
" noremap <silent> <space><space> <esc>:call <SID>Wall()<cr>
"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" 复制到末尾
nnoremap Y y$

" tab相关
if !g:HasPlug('vim-airline')
    nnoremap  <M-l> :tabnext<cr>
    nnoremap  <M-h> :tabprevious<CR>
    tnoremap  <M-l> <c-\><c-n>:tabnext<cr>
    tnoremap  <M-h> <c-\><c-n>:tabprevious<CR>
endif
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
