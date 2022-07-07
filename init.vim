"-----------------------------------------------------------------------------
"vim settings
"
"
"disabling
:set wrap! "disable auto wrap
:set noswapfile "disable swap file creation

"enabling
:set autoindent "enable auto indent
:set ignorecase "enable non sensitive search
:set relativenumber number "enable show row numbers dynamically
:set smarttab "enable when on, a <Tab> in front of a line inserts blanks
:set mouse+=a "enable the use of the mouse.

"setting values
:set tabstop=2 "set number of spaces that a <Tab> in the file counts for
:set shiftwidth=2 "set number of spaces to use for each step of (auto)indent.
:set softtabstop=2 "set number of spaces that a <Tab> counts for while editing
:set colorcolumn=80 "set column verical line to delimit code max line length
:set scrolloff=8 "minimal number of screen lines to keep vertically cursor.
:set sidescrolloff=5 "minimal number of screen columns to keep horizontally

"extras settings
:syntax enable "enable syntax highlighting
:highlight ColorColumn ctermbg=0 guibg=lightgrey 
autocmd VimEnter * hi Normal ctermbg=none

"-----------------------------------------------------------------------------
"plugins

call plug#begin()
	Plug 'preservim/nerdtree' "for sidebar files explorer
	Plug 'tpope/vim-commentary' "for commenting lines with <gcc>/<gc>
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
	Plug 'junegunn/fzf.vim' "for search files and patterns
	Plug 'neoclide/coc.nvim', {'branch': 'release'} "for lsp
	Plug 'vim-airline/vim-airline' "for detailed bottom statusbar
	Plug 'vim-airline/vim-airline-themes' "for detailed bottom statusbar theme
	Plug 'morhetz/gruvbox'
call plug#end()

"-----------------------------------------------------------------------------
" shortcuts table
"
" | Plugin       	| Description                   	| Command 	|
" |--------------	|-------------------------------	|---------	|
" | vim          	| jump next tab                 	| <C-e>   	|
" | fzf          	| search on git tracked files   	| <C-p>   	|
" | fzf          	| search pattern on all files   	| <C-f>   	|
" | nerdtree     	| open current file in nerdtree 	| <C-t>   	|
" | coc-tsserver 	| shows docs definition         	| K       	|
" | coc-tsserver 	| renames all instances         	| <F2>    	|
" | coc-tsserver 	| go to definition              	| gd      	|
" | coc-tsserver 	| list all references           	| gr      	|

"shortcuts - vim
nnoremap <C-e> :tabnext<CR>

"shortcuts - fuzzy finder (fzf)
nnoremap <silent> <C-p> :GFiles<CR> 
nnoremap <silent> <C-f> :Ag<CR>

"shortcuts - nerdtree
nnoremap <C-t> :NERDTreeFind<CR>

"shortcuts - coc-tsserver
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

"-----------------------------------------------------------------------------
"plugins settings
"
"plugin setting - setup gruvbox colorscheme
:colorscheme gruvbox

"plugin setting - vim-airline-themes
let g:airline_theme='gruvbox'

"plugin setting - vim-airline
let g:airline#extensions#tabline#fnamemod = ':~:.'
let g:airline#extensions#tabline#enabled = 1

"plugin setting - nerdtree
let g:NERDTreeQuitOnOpen = 1

"plugin setting - coc-css
autocmd FileType css setl iskeyword+=-
autocmd FileType scss setl iskeyword+=@-@

"-----------------------------------------------------------------------------
"custom functions
"
"coc.nvim - for autocomplete when press tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"coc.nvim - make <CR> auto-select the first completion item and notify 
"coc.nvim to format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"coc.nvim - use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"coc.nvim - for showing implementation docs when pressing K
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
