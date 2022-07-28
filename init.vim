call plug#begin()
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
"  efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" ativar sintaxe colorida
syntax on

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativar numeração de linha
set number

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=3 softtabstop=3 expandtab shiftwidth=3

map <C-n> :NERDTreeToggle<cr>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:AutoPairsMapCR = 0

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

syntax enable
colorscheme dracula

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


set termguicolors

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
