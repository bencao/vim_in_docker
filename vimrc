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

" more natural split opening
set splitbelow
set splitright

" please take care here of potential to lose some changes
" due to we map the current host user into the container,
" when saving to container's directories there will be permission errors
" so right now we simply don't save swapfile
set noswapfile
set viminfo=

" read .vimrc from project folder
set exrc

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

nnoremap <silent> <leader>t :call ToggleNERDTreeFind()<CR>
nnoremap <silent> <leader>T :NERDTreeToggle<CR>

" zoom
function! s:ZoomToggle() abort
  if exists('t:zoomed') && t:zoomed
    execute t:zoom_winrestcmd
    let t:zoomed = 0
  else
    let t:zoom_winrestcmd = winrestcmd()
    resize
    vertical resize
    let t:zoomed = 1
  endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>o :ZoomToggle<CR>

" browse files/buffers
nnoremap <leader>b :CtrlPMixed<CR>

" search text patterns
nnoremap <leader>a :Ag 
nnoremap <leader>k :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" rebuild ctags
nnoremap <leader>r :!ctags -R --exclude=.git --exclude=node_modules --exclude=_book .<CR>

" moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

""" Ag settings

" search from project root
let g:ag_working_path_mode = 'r'

""" CtrlP settings

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|compiled'
" search from project root
let g:ctrlp_working_path_mode = 'ra'
" read files from git repo
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" default use regexp search mode, it's much more effective for big projects
let g:ctrlp_regexp = 1

""" EasyMotion settings

" configs
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" shortcuts
map <leader>f <Plug>(easymotion-bd-w)
map  / <Plug>(easymotion-sn)
omap  / <Plug>(easymotion-tn)

""" EasyAlign settings

" shortcuts
vmap <Enter> <Plug>(EasyAlign)
" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

""" Solarized color settings

" configs
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

""" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
