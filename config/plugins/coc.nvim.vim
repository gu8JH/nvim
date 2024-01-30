
" 卸载不在列表中的插件
function! s:uninstall_unused_coc_extensions() abort
  for e in keys(json_decode(join(readfile(expand(g:coc_data_home . '/extensions/package.json')), "\n"))['dependencies'])
    if index(g:coc_global_extensions, e) < 0
      execute 'CocUninstall ' . e
    endif
  endfor
endfunction
autocmd User CocNvimInit call s:uninstall_unused_coc_extensions()

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
" inoremap <silent><expr> <c-,> coc#refresh()

" diagnostic 跳转
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

let g:coc_go_gopls_exe = '/data00/home/workspace/bin/gopls'

" 跳转到定义
nmap <silent> gd <plug>(coc-definition)
" 跳转到类型定义
" nmap <silent> gy <plug>(coc-type-definition)
" 跳转到实现
nmap <silent> gi <plug>(coc-implementation)
" 跳转到引用
nmap <silent> gr <plug>(coc-references)
" nmap <silent> gr :<C-u>call CocAction('jumpReferences')<CR>

" 在源/头文件之间切换
nmap <silent> <leader>s :CocCommand clangd.switchSourceHeader<cr>

" 使用K悬浮显示定义
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" 函数文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
" 函数参数的文档
nnoremap <silent> <space>k :call CocActionAsync('showSignatureHelp')<CR>

"""""""""""""""""""""""
" coc-plug config
"""""""""""""""""""""""
" if g:HasPlug('coc-fzf')
"   " nnoremap <silent> <space>A  :<C-u>CocFzfList diagnostics<CR>
"   " nnoremap <silent> <space>a  :<C-u>CocFzfList diagnostics --current-buf<CR>
"   nnoremap <silent> <space>c  :<C-u>CocFzfList commands<CR>
"   nnoremap <silent> <space>e  :<C-u>CocFzfList extensions<CR>
"   nnoremap <silent> <space>l  :<C-u>CocFzfList<CR>
"   " nnoremap <silent> <space>l  :<C-u>CocFzfList location<CR>
"   nnoremap <silent> <space>o  :<C-u>CocFzfList outline<CR>
"   nnoremap <silent> <space>O  :<C-u>CocFzfList symbols<CR>
"   nnoremap <silent> <space>s  :<C-u>CocFzfList services<CR>
"   nnoremap <silent> <space>p  :<C-u>CocFzfListResume<CR>
"
"   if g:HasCocPlug('coc-yank')
"     nnoremap <silent> <space>y  :<C-u>CocFzfList yank<CR>
"   endif
" else
"   " Show all diagnostics
"   if g:HasPlug('fzf-preview.vim')
"     nnoremap <silent> <space>a  :<C-u>CocCommand fzf-preview.CocCurrentDiagnostics<cr>
"     nnoremap <silent> <space>A  :<C-u>CocCommand fzf-preview.CocDiagnostics<cr>
"   else
"     nnoremap <silent> <space>a  :<C-u>CocList --normal diagnostics<cr>
"   endif
"   " Manage extensions
"   " nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"   nnoremap <silent> <space>o  :<C-u>CocList --auto-preview outline<cr>
"   nnoremap <silent> <space>O  :<C-u>CocList --auto-preview --interactive symbols<cr>
"   " Show commands
"   nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"   " Resume latest coc list
"   nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"   " nnoremap <silent> <space>s  :<C-u>CocList services<CR>
"   " show coclist 早晚要放进去的
"   nnoremap <silent> <space>l  :<C-u>CocList<CR>
" endif

" 重构refactor,需要lsp支持
" nmap <space>rf <Plug>(coc-refactor)
" 修复代码
nmap <localleader>f <Plug>(coc-fix-current)
" 变量重命名
nmap <localleader>r <Plug>(coc-rename)

if g:HasCocPlug('coc-highlight')
  " 高亮当前光标下的所有单词
  au CursorHold * silent call CocActionAsync('highlight')
endif

if g:HasCocPlug('coc-git')
  " 导航到修改块
  nmap <leader>gk <Plug>(coc-git-prevchunk)
  nmap <leader>gj <Plug>(coc-git-nextchunk)
  " 显示光标处的修改信息
  nmap <leader>gp <Plug>(coc-git-chunkinfo)
  nmap <leader>gu <esc>:CocCommand git.chunkUndo<cr>
endif

"--------------------------------- 自定义命令
" call coc#add_command('call CocAction("pickColor")', 'MundoToggle', '显示撤回列表')

"--------------------------------- 配置json文件

" coc-lists
" if g:HasCocPlug("coc-lists")
"   " session 保存目录
"   call coc#config('session.directory', g:session_dir)
"   if !g:HasPlug('dashboard-nvim')
"     " 退出时自动保存session
"     call coc#config('session.saveOnVimLeave', v:true)
"   endif
"
"   call coc#config('list.maxHeight', 10)
"   call coc#config('list.maxPreviewHeight', 8)
"   call coc#config('list.autoResize', v:false)
"   call coc#config('list.source.grep.command', 'rg')
"   call coc#config('list.source.grep.defaultArgs', [
"         \ '--column',
"         \ '--line-number',
"         \ '--no-heading',
"         \ '--color=always',
"         \ '--smart-case'
"         \ ])
"   call coc#config('list.source.lines.defaultArgs', ['-e'])
"   call coc#config('list.source.words.defaultArgs', ['-e'])
"   call coc#config('list.source.files.command', 'rg')
"   call coc#config('list.source.files.args', ['--files'])
"   call coc#config('list.source.files.excludePatterns', ['.git'])
" endif

" coc-clangd
" if g:HasCocPlug('coc-clangd')
"   " 配合插件vim-lsp-cxx-highlight实现高亮
"   call coc#config('clangd.semanticHighlighting', v:true)
" endif

" coc-git
" if g:HasCocPlug('coc-git')
"   call coc#config('git.addGBlameToBufferVar', v:true)
"   call coc#config('git.addGBlameToVirtualText', v:true)
"   call coc#config('git.virtualTextPrefix', '  ➤  ')
"   call coc#config('git.addedSign.hlGroup', 'GitGutterAdd')
"   call coc#config('git.changedSign.hlGroup', 'GitGutterChange')
"   call coc#config('git.removedSign.hlGroup', 'GitGutterDelete')
"   call coc#config('git.topRemovedSign.hlGroup', 'GitGutterDelete')
"   call coc#config('git.changeRemovedSign.hlGroup', 'GitGutterChangeDelete')
"   call coc#config('git.addedSign.text', '▎')
"   call coc#config('git.changedSign.text', '▎')
"   call coc#config('git.removedSign.text', '▎')
"   call coc#config('git.topRemovedSign.text', '▔')
"   call coc#config('git.changeRemovedSign.text', '▋')
" endif

" coc-snippets
" if g:HasCocPlug('coc-snippets')
"   call coc#config("snippets.ultisnips.enable", v:true)
"   call coc#config("snippets.ultisnips.directories", [
"         \ 'UltiSnips',
"         \ 'gosnippets/UltiSnips'
"         \ ])
"   call coc#config("snippets.extends", {
"         \ 'cpp': ['c'],
"         \ 'typescript': ['javascript']
"         \ })
" endif


" coc-highlight
" if g:HasCocPlug('coc-highlight')
"   call coc#config("highlight.disableLanguages", ["csv"])
" endif

" coc-python
if g:HasCocPlug('coc-python')
  call coc#config("python.jediEnabled", v:true)
  call coc#config("python.linting.enabled", v:true)
  call coc#config("python.linting.pylintEnabled", v:true)
endif

" coc-rainbow-fart
" if g:HasCocPlug('coc-rainbow-fart')
" call coc#config("rainbow-fart.ffplay", "ffplay")
" endif
if g:HasCocPlug('coc-translator')
  " popup
  nmap <silent><F2> <Plug>(coc-translator-p)
  vmap <silent><F2> <Plug>(coc-translator-pv)
endif

xmap <silent><F3> <Plug>(coc-format-selected)
nmap <silent><F3> <Plug>(coc-format-selected)
