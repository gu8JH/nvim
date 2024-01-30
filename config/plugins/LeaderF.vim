" fzf优先
" highlight Lf_hl_rgHighlight guifg=#FFFF00 guibg=NONE ctermfg=yellow ctermbg=NONE
" highlight Lf_hl_match gui=bold guifg=Red cterm=bold ctermfg=21
" highlight Lf_hl_matchRefine  gui=bold guifg=Magenta cterm=bold ctermfg=201

" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 0
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansM Nerd Font Mono"

let g:Lf_HideHelp = 0
let g:Lf_NoChdir = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShowHidden = 1
let g:Lf_DefaultMode = 'NameOnly'
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" let g:Lf_ShortcutF = '<C-P>'
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {
"         \ 'File': 1,
"         \ 'Buffer': 1,
"         \ 'Mru': 1,
"         \ 'Tag': 1,
"         \ 'BufTag': 1,
"         \ 'Function': 1,
"         \ 'Line': 1,
"         \ 'Colorscheme': 0,
"         \ 'Rg': 1,
"         \ 'Gtags': 1
"         \}

" let g:Lf_PopupPosition=[30,0]
" let g:Lf_PreviewPopupWidth = 10
let g:Lf_AutoResize = 1

let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg','*-bin', '.cache', 'deploy', 'build', 'third'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.js','*.ts','*.map','*.rs', '.git*', '*xlsx']
        \}
let g:Lf_WorkingDirectoryMode = 'aF'
" let g:Lf_PreviewCode = 1
"文件搜索
nnoremap <silent> <Leader>f :LeaderfFile<CR>
"历史打开过的文件
nnoremap <silent> <Leader>m :Leaderf mru<CR>
"Buffer
nnoremap <silent> <Leader>b :Leaderf buffer<CR>
"函数搜索（仅当前文件里）
nnoremap <silent> <Leader>u :LeaderfFunction<CR>
nnoremap <silent> <Leader>a :LeaderfFunctionAll<CR>
nnoremap <silent> <Leader>c :LeaderfFunctionCword<CR>

"模糊搜索，很强大的功能，迅速秒搜
"nnoremap <silent> <Leader>r :Leaderf! rg -g *{h,cpp,c,go} --regexMode --cword<CR>
nnoremap <silent> <Leader>R :Leaderf rg -g *.{h,cpp,py,c,cc,sh,go} --glob '!third/*' --glob '!buid/*' --glob '!deploy/*' --glob '!.cache/*'<CR>>
noremap <Leader>r :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.{h,cpp,py,c,cc,sh,go} --glob '!third/*' --glob '!build/*' --glob '!deploy/*' --glob '!.cache/*'", expand("<cword>"))<CR><CR>

" let g:Lf_GtagsAutoGenerate = 1
" let g:Lf_Gtagslabel = 'new-ctags'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
