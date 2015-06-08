"----------------------------
"Start Neobundle Settings.
"----------------------------
"bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'
" autocloseを設定
NeoBundle 'Townk/vim-autoclose'
" Emmetを設定
NeoBundle 'mattn/emmet-vim'

call neobundle#end()

"Required:
filetype plugin indent on

NeoBundleCheck

"------------------------
"End Neobundle Settings.
"------------------------

set number
syntax on
