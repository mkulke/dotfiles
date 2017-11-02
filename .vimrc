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
" colorscheme solarized
" set t_Co=256
" let g:solarized_termcolors=256
set numberwidth=2
" highlight LineNr ctermbg=237

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1

set relativenumber

" let g:gsyntastic_javascript_checkers = ['eslint']

command BeautifyXML :1,$!xmllint --format --recover - 2> /dev/null
command BeautifyJSON :1,$!jq -r . - 2> /dev/null

" ale

" let g:ale_lint_on_text_changed = 'never'

" elm
" let g:elm_syntastic_show_warnings = 1
" let g:syntastic_auto_loc_list = 0
let g:elm_setup_keybindings = 0
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1

call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')

" leader key
let mapleader="\<space>"
" nnoremap <leader><leader> :bnext!<CR>
nnoremap <leader><leader> :b 
nnoremap <C-m> :bnext!<CR>
nnoremap <C-n> :bprevious!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>d :bd<CR>
vmap <leader>y "*y
nmap <leader>p "*p
nnoremap <leader>c :pc!<CR>
nnoremap <leader>t <C-]>

"windows
nnoremap <leader><Up> :wincmd k<CR>
nnoremap <leader><Down> :wincmd j<CR>
nnoremap <leader><Left> :wincmd h<CR>
nnoremap <leader><Right> :wincmd l<CR>
nnoremap <leader>c :wincmd c<CR>

"golang
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go set completeopt-=preview
" let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['go'] }

"typescript
let g:tsuquyomi_disable_quickfix = 1
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.typescript = '[^. *\t]\.\w*\|\h\w*::'

"rust
let g:rustfmt_autosave = 1

"sneak
" let g:sneak#s_next = 1

"tags
nnoremap <leader>t <C-]>

"prettier
" let g:prettier#exec_cmd_async = 1
let g:prettier#config#bracket_spacing = 'true'
" let g:prettier#config#parser = 'typescript'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

"hardmode
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>

" fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
