"Neobundle Settings.
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
" NeoBundle 'tomasr/molokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'ujihisa/unite-colorscheme'
" status line
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

"Required:
filetype plugin indent on

NeoBundleCheck

"------------------------
"End Neobundle Settings.
"------------------------

" エンコーディング
set encoding=utf-8
set fileencodings=utf-8 "保存時の文字コード
set fileencodings=utf-8,euc-jp,cp932 "読み込み
set fileformats=unix,dos,mac
set ambiwidth=double

" タブ文字１つあたりのスペースの数
" set ts=4
" set sw=4
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set number
" set undofile
" カラースキーマ
" colorscheme molokai
set background=dark
colorscheme hybrid
syntax on
" 行ハイライト
set cursorline
" クリップボードを有効に
set clipboard&
set clipboard^=unnamedplus
" backspaceで改行を削除
set backspace=2
" 不可視文字を可視化
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
" カーソル位置
set ruler
" ステータス画面
set laststatus=2

" {}の改行
inoremap {<Enter> {}<Left><CR><ESC><S-o>

" 挿入モード時のカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

" 挿入からノーマル
inoremap <C-j> <Esc>
" USキーボード用
nnoremap ; :
" minttyのカーソル形状
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
