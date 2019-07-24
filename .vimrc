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
NeoBundle 'tomasr/molokai'
"NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'ujihisa/unite-colorscheme'
" status line
NeoBundle 'itchyny/lightline.vim'
" syntax for scala
NeoBundle 'derekwyatt/vim-scala'

if has('lua')
    " 自動補完
    NeoBundle 'Shougo/neocomplete.vim'
    " スニペット
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'
endif

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
colorscheme molokai
syntax on
" 行ハイライト
set cursorline
" クリップボードを有効に
set clipboard&
set clipboard^=unnamedplus
set clipboard+=unnamed
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

" タブ移動
nnoremap <C-n> gt
nnoremap <C-p> gT

" タグ移動
source $VIMRUNTIME/macros/matchit.vim

" USキーボード用
nnoremap ; :
" minttyのカーソル形状
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" 補完・スニペット
if neobundle#is_installed('neocomplete.vim')
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#min_keyword_length = 3
    let g:neocomplete#enable_auto_delimiter = 1
    let g:neocomplete#auto_completion_start_length = 1
    " Plugin key-mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)

    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " For conceal markers.
    if has('conceal')
        set conceallevel=2 concealcursor=niv
    endif

    let g:neosnippet#snippets_directory='~/.vim/snippets'
endif

" tex
let g:tex_conceal=''
