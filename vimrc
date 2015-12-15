""" Global settings

" turn on syntax highlight
syntax on

" highlight search
set hlsearch

" filetype based indentation
filetype plugin indent on
" fallback to autoindent
" which does nothing more than copy the indentation from the previous line
" when starting a new line
set autoindent

" expand tab using space characters, each tab equals to 2 spaces
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2

" a special column at the 80 character warns lines that are too long
set colorcolumn=80

" encoding settings
set encoding=utf-8
set termencoding=utf-8

" please take care here of potential to lose some changes
" due to we map the current host user into the container,
" when saving to container's directories there will be permission errors
" so right now we simply don't save swapfile
set noswapfile
set viminfo=

""" Package manager settings

" pathogen - the runtime for Vim plugins
execute pathogen#infect()

""" Shortcut settings

" set space as leader key
let mapleader=" "

"" Leader prefixed bindings

" double leader to switch between current and last edit file
nnoremap <leader><leader> <c-^>

" open vim_in_docker key binding help
nnoremap <leader>h :help vim_in_docker<CR>

" open new splits
nnoremap <leader>s :vsp<CR>
nnoremap <leader>S :sp<CR>

" write file
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w!<CR>

" quit
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>

" paste
nnoremap <leader>p :set paste<CR>
nnoremap <leader>P :set nopaste<CR>

" tree
function! ToggleNERDTreeFind()
  if g:NERDTree.IsOpen()
    NERDTreeClose
  else
    NERDTreeFind
  endif
endfunction

nnoremap <leader>t :call ToggleNERDTreeFind()<CR>
nnoremap <leader>T :NERDTreeToggle<CR>

" browse files/buffers
nnoremap <leader>b :CtrlPMixed<CR>

" search text patterns
nnoremap <leader>a :Ack

" rebuild ctags
nnoremap <leader>r :!ctags -R --exclude=.git --exclude=node_modules .<CR>

" moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

""" CtrlP settings

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""" EasyMotion settings

" configs
let g:EasyMotion_do_mapping=0
let g:EasyMotion_smartcase=1

" shortcuts
map <leader>f <Plug>(easymotion-bd-w)
map  / <Plug>(easymotion-sn)
omap  / <Plug>(easymotion-tn)

""" EasyAlign settings

" shortcuts
vmap <Enter> <Plug>(EasyAlign)

""" Solarized color settings

" configs
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
