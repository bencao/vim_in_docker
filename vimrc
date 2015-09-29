syntax on
filetype plugin indent on

set autoindent
set hlsearch
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set colorcolumn=80
set encoding=utf-8
set termencoding=utf-8
set noswapfile
set viminfo=

" pathogen - the runtime for Vim plugins
execute pathogen#infect()

" set space as leader key
let mapleader=" "
let g:netrw_liststyle=4

""" Leader prefixed bindings
" double leader to switch between current and last edit file
nnoremap <leader><leader> <c-^>
" open new splits
nnoremap <leader>w :vsp<CR>
nnoremap <leader>W :sp<CR>
" quit
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
" tree
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>T :NERDTreeFind<CR>
" browse files/buffers
nnoremap <leader>b :CtrlPMixed<CR>
" rebuild ctags
nnoremap <leader>r :!ctags -R --exclude=.git --exclude=node_modules .<CR>

" moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

""" EasyMotion settings
let g:EasyMotion_do_mapping=0
let g:EasyMotion_smartcase=1
map <leader>f <Plug>(easymotion-bd-w)
map  / <Plug>(easymotion-sn)
omap  / <Plug>(easymotion-tn)

""" EasyAlign settings
vmap <Enter> <Plug>(EasyAlign)

""" Solarized color settings
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

""" EasyTags settings
set tags=./tags;
let g:easytags_dynamic_files=1
let g:easytags_async=1
