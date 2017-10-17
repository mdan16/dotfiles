" gvim display
set guifont=Ricty:h12:cSHIFTJIS
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim
if has("multi_lang")
    language C
endif
set guioptions-=m
set guioptions-=T

" backup, undo
set nobackup
set noundofile

" カラースキーマ
" colorscheme molokai
colorscheme molokai
" クリップボードを有効に
set clipboard&
"set clipboard^=unnamedplus
