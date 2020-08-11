" Directory Settings
if !isdirectory(expand("$HOME/.vim/swap"))
    call mkdir(expand("$HOME/.vim/swap"), "p")
endif
set directory=$HOME/.vim/swap//
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
    call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader = ','

call plug#begin('~/.vim/plugged')

let g:plug_timeout = 300

Plug 'junegunn/vim-plug'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
let NERDTreeShowBookmarks = 1
Plug 'Townk/vim-autoclose'
Plug 'mattn/emmet-vim'
Plug 'tomasr/molokai'
Plug 'ujihisa/unite-colorscheme'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <leader>] :YcmCompleter GoTo<cr>
Plug 'sjl/gundo.vim'
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
Plug 'editorconfig/editorconfig-vim'

"if has('lua')
"    " 自動補完
"    Plug 'Shougo/neocomplete.vim'
"    " スニペット
"    Plug 'Shougo/neosnippet'
"    Plug 'Shougo/neosnippet-snippets'
"endif

call plug#end()

"Required:
filetype plugin indent on

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
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

set number
" カラースキーマ
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
set wildmenu

set tags=tags;

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

" leader mapping
nnoremap <leader>f :Files<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>w :Windows<cr>
nnoremap <leader>b :Buffers<cr>

" minttyのカーソル形状
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" 補完・スニペット
"if has('lua')
"    let g:neocomplete#enable_at_startup = 1
"    let g:neocomplete#enable_smart_case = 1
"    let g:neocomplete#min_keyword_length = 3
"    let g:neocomplete#enable_auto_delimiter = 1
"    let g:neocomplete#auto_completion_start_length = 1
"    " Plugin key-mappings.
"    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"    xmap <C-k>     <Plug>(neosnippet_expand_target)
"
"    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"    " For conceal markers.
"    if has('conceal')
"        set conceallevel=2 concealcursor=niv
"    endif
"
"    let g:neosnippet#snippets_directory='~/.vim/snippets'
"endif

" tex
let g:tex_conceal=''
