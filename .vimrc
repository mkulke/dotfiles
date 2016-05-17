execute pathogen#infect()
"set term=screen-256color
"set term=xterm
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 4
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

syntax enable
"set background=light
"colorscheme anderson
"colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256
let g:gitgutter_override_sign_column_highlight = 0
set numberwidth=2
highlight LineNr ctermbg=237

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

set relativenumber

let g:syntastic_javascript_checkers = ['eslint']

command BeautifyXML :1,$!xmllint --format --recover - 2> /dev/null
command BeautifyJSON :1,$!jq -r . - 2> /dev/null

" elm
let g:airline#extensions#tabline#enabled = 1
" let g:elm_format_autosave = 1

" leader key

let mapleader="\<space>"
nnoremap <leader><leader> :bnext!<CR>
nnoremap <C-m> :bnext!<CR>
nnoremap <C-n> :bprevious!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>d :bd<CR>
vmap <leader>y "*y
nmap <leader>p "*p
nnoremap <leader>c :pc!<CR>

"windows
nnoremap <leader><Up> :wincmd k<CR>
nnoremap <leader><Down> :wincmd j<CR>
nnoremap <leader><Left> :wincmd h<CR>
nnoremap <leader><Right> :wincmd l<CR>
nnoremap <leader>c :wincmd c<CR>

"golang
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go set completeopt-=preview

"typescript
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.typescript = '[^. *\t]\.\w*\|\h\w*::'

"sneak
" let g:sneak#s_next = 1
