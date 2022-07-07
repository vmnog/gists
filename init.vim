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

"plugins
call plug#begin()
	Plug 'preservim/nerdtree' "for sidebar files explorer
	Plug 'tpope/vim-commentary' "for commenting lines with <gcc>/<gc>
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "for search files and patterns
	Plug 'junegunn/fzf.vim' "for search files and patterns
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"plugin setting - nerdtree
let g:NERDTreeQuitOnOpen = 1

"plugin setting - coc-css
autocmd FileType css setl iskeyword+=-
autocmd FileType scss setl iskeyword+=@-@

"plugin setting - coc-tsserver

"for showing implementation docs
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"for highlight references when cursor hovering
autocmd CursorHold * silent call CocActionAsync('highlight')



"shortcuts - fuzzy finder (fzf)
nnoremap <silent> <C-p> :GFiles<CR> 
nnoremap <silent> <C-f> :Ag<CR>

"shortcuts - nerdtree
nnoremap <C-t> :NERDTreeFind<CR>

"shortcuts - coc-tsserver
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <F2> <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
