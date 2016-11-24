execute pathogen#infect()
execute pathogen#helptags()


filetype plugin indent on
set background=dark
colorscheme onedark 
if (has("termguicolors"))
    set termguicolors
  endif
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

syntax on

set hidden
set number
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set modelines=0
set relativenumber
set autoread
set incsearch
set so=7

autocmd BufRead,BufNewFile *.py let python_highlight_all=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map Y y$
map 0 ^

nnoremap <C-L> :nohl<CR><C-L>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

nnoremap <D-j> :m .+1<CR>==
nnoremap <D-k> :m .-2<CR>==
inoremap <D-j> <Esc>:m .+1<CR>==gi
inoremap <D-k> <Esc>:m .-2<CR>==gi
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

map <space> /
map <M-space> ?

map <C-c> :BD<cr>

let g:jedi#completions_command = "<C-A>"
let g:jedi#popup_on_dot = 0

let g:NERDDefaultAlign = 'left'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
