set tabstop=4
set shiftwidth=4
set shiftround 
set expandtab 
set smarttab 
set showcmd  
set number   
set showmatch 
set hlsearch 
set incsearch
set ignorecase
set smartcase
set backspace=2 
set autoindent 
set textwidth=79 
set formatoptions=c,q,r,t
set noruler         
set laststatus=2
set background=dark
set mouse=a         
set wildmenu        
set novisualbell    
set hidden          
set foldmethod=syntax " folds functions based on syntax
set foldlevelstart=99 " turns off folding by default

" clipboard
set clipboard=unnamedplus

" abbreviations
iab cout cout <<  << endl;<Esc>8hi

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

execute pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

nmap <F4> :Bclose<CR>
map  <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F10> gg=G
nmap <silent> <F12> :wa<CR>:!ctags -R .<CR>:UpdateTypesFile<CR>
nmap <C-S> :wa<CR>

noremap <C-Left> :bp<CR>
noremap <C-h> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <C-l> :bn<CR>

nnoremap <silent> <CR> :noh<CR><CR>

imap <Tab> <C-P>

" for LXDE
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <silent> <A-l> :wincmd l<CR>

" for i3
nmap <silent> <T-Up> :wincmd k<CR>
nmap <silent> <C-A-k> :wincmd k<CR>
nmap <silent> <T-Down> :wincmd j<CR>
nmap <silent> <C-A-j> :wincmd j<CR>
nmap <silent> <T-Left> :wincmd h<CR>
nmap <silent> <C-A-h> :wincmd h<CR>
nmap <silent> <T-Right> :wincmd l<CR>
nmap <silent> <C-A-l> :wincmd l<CR>

" if the current workstation does not have powerline fonts installed, 
" clone and install https://github.com/powerline/fonts

set guioptions=i
set guifont=Inconsolata-g\ for\ Powerline\ 11

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#tabline#enabled=1
let g:airline_section_x='%{airline#util#wrap(airline#extensions#tagbar#currenttag(),0)}'
let g:airline_section_y='%{airline#util#wrap(airline#parts#filetype(),0)}'
let g:airline#extensions#hunks#non_zero_only=1

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11 -I src'

" temporary ycm disable
" let g:loaded_youcompleteme = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" error location toggle
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <silent> <F6> :<C-u>call ToggleErrors()<CR>


let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1

let g:necoghc_debug = 1

colorscheme molokai 
filetype plugin indent on
syntax on
