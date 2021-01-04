" 功能很强的折叠插件, zc zo
Plug 'pseewald/vim-anyfold'
" 显示清除尾部空格
Plug 'ntpeters/vim-better-whitespace'
" 代码补全插件
" Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'chxuan/vim-buffer'

Plug 'Chiel92/vim-autoformat'
" 文件类型图标
Plug 'ryanoasis/vim-devicons'
" 对齐线
" Plug 'Yggdroot/indentLine'
" 模糊搜索
Plug 'Yggdroot/LeaderF'
" ctag/gtag
Plug 'jsfaint/gen_tags.vim'
" 对齐
" Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign']}
"
Plug 'liuchengxu/vim-which-key'
" 主题theme类插件
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 标签显示
Plug 'kshenoy/vim-signature'
" 注释
Plug 'preservim/nerdcommenter'
" 底栏
" Plug 'itchyny/lightline.vim'
" 强化f和F键
Plug 'rhysd/clever-f.vim'
" 起始界面
Plug 'mhinz/vim-startify'
" 彩虹括号
" Plug 'luochen1990/rainbow'
" 快速移动
Plug 'easymotion/vim-easymotion'
" 函数列表
Plug 'liuchengxu/vista.vim'
" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
      \ 'coc-git',
      \ 'coc-clangd',
      \ 'coc-json',
      \ 'coc-translator',
      \ ]

      " \ 'coc-vimlsp',
      " \ 'coc-prettier',
      " \ 'coc-todolist',
      " \ 'coc-yank',
      " \ 'coc-xml',
      " \ 'coc-lists',
" 显示剪切板
Plug 'junegunn/vim-peekaboo'
" 快速选择
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
" 多光标
Plug 'mg979/vim-visual-multi'

" go 主要插件
Plug 'fatih/vim-go'
" go 中的代码追踪，输入 gd 就可以自动跳转
" Plug 'dgryski/vim-godef'
" Plug 'ctrlpvim/ctrlp.vim'
