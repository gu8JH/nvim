" let g:gen_tags#ctags_opts = ['-c', '--verbose']
" ctags
" let g:gen_tags#ctags_opts = ['--c++-kinds=+px', '--c-kinds=+px', '--exclude=*/workspace/src/code.alipay.com/pamir-framework/bazel*/*']
let g:loaded_gentags#ctags = 0
let g:gen_tags#ctags_auto_gen = 1
let g:gen_tags#ctags_auto_update = 0

" gtags
let g:loaded_gentags#gtags = 1
let g:gen_tags#gtags_auto_gen = 1
let g:gen_tags#gtags_auto_update = 1

" let g:gen_tags#blacklist = []
" let g:gen_tags#blacklist += split(glob('~/workspace/src/code.alipay.com/pamir-framework/bazel-bin/*'))
" let g:gen_tags#blacklist += split(glob('~/workspace/src/code.alipay.com/pamir-framework/bazel-out/*'))
" let g:gen_tags#blacklist += split(glob('~/workspace/src/code.alipay.com/pamir-framework/bazel-testlogs/*'))
" let g:gen_tags#blacklist += split(glob('~/workspace/src/code.alipay.com/pamir-framework/bazel-pamir-framework/*'))
