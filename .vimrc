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
