let g:pathogen_disabled = []

"if has('nvim')
"    call add(g:pathogen_disabled, 'jedi-vim')
"else
"    call add(g:pathogen_disabled, 'deoplete')
"endif
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
set noswapfile
if has('gui_running')
    set guioptions -=l
    set guioptions -=L
    set guioptions -=r
    set guioptions -=R
endif
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
map <S-space> ?

"Auto-format json file with jq
map <leader>jq :%!jq '.'<CR>

"Diff the unsaved changes
map <leader>diff :w !diff % -<CR>

map <C-c> :BD<cr>

map <C-n> :NERDTreeToggle<CR>

if has('nvim')
    let g:deoplete#enable_at_startup = 1
    autocmd CompleteDone * pclose!
    let g:deoplete#disable_auto_complete = 1
    
    "sick tab mapping:
    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ deoplete#mappings#manual_complete()
    function! s:check_back_space() abort "{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}

"else
    let g:jedi#completions_command = "<C-A>"
    let g:jedi#popup_on_dot = 0
    let g:jedi#show_call_signatures = "0"
endif

let g:NERDDefaultAlign = 'left'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:indentLine_setConceal = 0
let g:indentLine_char = '|'
let g:indentLine_color_gui = '#4c4c4b'
