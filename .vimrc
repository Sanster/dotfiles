" Remove | in window split bar
set fillchars+=vert:\ 

" The width of a TAB is set to 4
set tabstop=4

" Indents will have a width of 4
set shiftwidth=4
" Sets the number of columns for a TAB
set softtabstop=4

" Expand TABs to spaces
set expandtab

" set background dark
set background=dark
highlight Normal ctermfg=grey ctermbg=black

" Highlight current line in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" make jj do esc"
inoremap jj <Esc>

" switch tab use ctrl-left/right
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Display unprintable characters f12 - switches
set list
" Unprintable chars mapping
set listchars=tab:•\ ,trail:•,extends:»,precedes:«

" vim-plug
" Install vim-plug: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/tpope/vim-surround.git'

call plug#end()

" NERDTree: Auto start
" autocmd VimEnter * NERDTree

" NERDTree: Use F2 to open/hide NERDTree
map  <C-n> :NERDTreeToggle<CR>

" NERDTree: Automatically quit vim if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree: show on right side
let NERDTreeWinPos="right"

" FZF: map ctrl-f to FZF
map  <C-f> :FZF<CR>

" airline: tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
" show just file
let g:airline#extensions#tabline#fnamemod = ':t'

" hide closed buffer
let g:airline#extensions#tabline#show_buffers = 0

" Disable tabline close button
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 1

" airline: change symbols
let g:airline_symbols = {}
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_section_z = '%l:%c'

" airline custom theme
let g:airline#themes#cwq#palette = {}

let s:guibg = '#080808'
let s:termbg = 232
let s:termsep = 236
let s:guisep = '#303030'

let s:N1 = [ '#00dfff' , s:guibg , 45  , s:termbg ]
let s:N2 = [ '#ff5f00' , s:guibg , 202 , s:termbg ]
let s:N3 = [ '#767676' , s:guibg , 7   , s:termbg ]

let g:airline#themes#cwq#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#cwq#palette.normal_modified = {
      \ 'airline_c': [ '#df0000' , s:guibg, 160     , s:termbg    , ''     ] ,
      \ }

let s:I1 = [ '#5fff00' , s:guibg , 82  , s:termbg ]
let s:I2 = [ '#ff5f00' , s:guibg , 202 , s:termbg ]
let s:I3 = [ '#767676' , s:guibg , 7   , s:termbg ]
let g:airline#themes#cwq#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cwq#palette.insert_modified = copy(g:airline#themes#cwq#palette.normal_modified)
let g:airline#themes#cwq#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#cwq#palette.replace = {
      \ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , 124     , ''     ] ,
      \ }
let g:airline#themes#cwq#palette.replace_modified = copy(g:airline#themes#cwq#palette.normal_modified)

let s:V1 = [ '#dfdf00' , s:guibg , 184 , s:termbg ]
let s:V2 = [ '#ff5f00' , s:guibg , 202 , s:termbg ]
let s:V3 = [ '#767676' , s:guibg , 7   , s:termbg ]
let g:airline#themes#cwq#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#cwq#palette.visual_modified = copy(g:airline#themes#cwq#palette.normal_modified)

let s:IA  = [ '#4e4e4e' , s:guibg  , 239 , s:termbg  , '' ]
let s:IA2 = [ '#4e4e4e' , s:guisep , 239 , s:termsep , '' ]
let g:airline#themes#cwq#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA2, s:IA2)
let g:airline#themes#cwq#palette.inactive_modified = copy(g:airline#themes#cwq#palette.normal_modified)

let g:airline#themes#cwq#palette.tabline = {
      \ 'airline_tabtype':  ['#ffffff', '#005252',  231, 36, ''],
      \ 'airline_tabmod':  ['#ffffff', '#780000',  231, 88, ''],
      \ }

let g:airline_theme='cwq'
