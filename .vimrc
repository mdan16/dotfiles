"----------------------------
"Start Neobundle Settings.
"----------------------------
"bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" uniteを設定
NeoBundle 'Shougo/unite.vim'
" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'
" autocloseを設定
NeoBundle 'Townk/vim-autoclose'
" Emmetを設定
NeoBundle 'mattn/emmet-vim'
" カラースキーマの設定
NeoBundle 'vim-scripts/darktango.vim'
NeoBundle 'ujihisa/unite-colorscheme'

call neobundle#end()

"Required:
filetype plugin indent on

NeoBundleCheck

"------------------------
"End Neobundle Settings.
"------------------------

" タブ文字１つあたりのスペースの数
set ts=4
set sw=4

set number
set undofile
colorscheme darkblue

" {}の改行
inoremap {<Enter> {}<Left><CR><ESC><S-o>

" 挿入モード時のカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

" 挿入からノーマル
inoremap <C-j> <Esc>
