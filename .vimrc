call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'ycm-core/YouCompleteMe' " 代码补全引擎
Plug 'tpope/vim-surround' " 快速操作包围符号
Plug 'tpope/vim-commentary' " 快速注释代码

call plug#end()

" 其他配置
set mouse=nvch
set number
set tabstop=4
set shiftwidth=4
set expandtab
syntax on

"tab
nmap <C-o> : tabnew 

"rm tailing
nmap tail : %s/\s\+$//e <CR>

"ctags
set tags=./tags;,tags
set autochdir

" YouCompleteMe 配置
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
nmap <C-D> : YcmCompleter GoToDefinition<CR>
nmap <C-d> : YcmCompleter GoToDeclaration<CR>
nmap <C-r> : YcmCompleter GoToReferences<CR>
nmap <C-k> : YcmCompleter GetDoc<CR>
nmap <C-f> : YcmCompleter FixIt<CR>
nmap <C-n> : YcmCompleter RefactorRename 
