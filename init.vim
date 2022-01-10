:set noswapfile
:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set autoread
au VimEnter *  NERDTree

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "mostra informações detalhadas na parte de baixo do terminal
Plug 'https://github.com/preservim/nerdtree' "habilita navegação pelos arquivos com o comando NERDTreeFocus
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'ryanoasis/vim-devicons' " add icons to nerdtree visualization
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " enable global search functions
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat' " for vim-prettier
Plug 'lukas-reineke/indent-blankline.nvim' " for show indentation vert lines
Plug 'dracula/vim'


call plug#end()

let g:coc_node_path = '/home/brasilprev/.asdf/shims/node'

lua << EOF
	vim.opt.list = true
	vim.opt.listchars:append("space:⋅")
	vim.opt.listchars:append("eol:↴")

	require("indent_blankline").setup {
		show_end_of_line = true,
		space_char_blankline = " ",
	}
EOF

filetype plugin indent on
syntax enable

" utf-8
set encoding=UTF-8

" nerdtree shortcuts 
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" nerdtree changing default symbols
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" prettier vim-prettier
let g:neoformat_try_node_exe = 1
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
"autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
"autocmd BufWritePre,TextChanged,InsertLeave *.ts Neoformat
"autocmd BufWritePre,TextChanged,InsertLeave *.tsx Neoformat
"autocmd BufWritePre,TextChanged,InsertLeave *.html Neoformat
"autocmd BufWritePre,TextChanged,InsertLeave *.scss Neoformat


" For No Previews
:set completeopt-=preview 

" tagbar shortcuts
nmap <F8> :TagbarToggle<CR>

" default colorscheme
:colorscheme dracula

" for prevent warning from coc.nvim
let g:coc_disable_startup_warning = 1 

" for pressing tab and select auto completion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

