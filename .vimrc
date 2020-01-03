"* is / for current word
"CTRL-N is tab
"abbr Lunix Linux
"cmap  browse saveas 
"cmap  browse confirm e 
"cmap  se textwidth=80 
"
call plug#begin()
	" comment with gc, gcc
	" Plug 'pangloss/vim-javascript'
	" Plug 'mxw/vim-jsx'
	Plug 'mattn/emmet-vim'
	Plug 'othree/yajs.vim'
	Plug 'tpope/vim-commentary'
	let g:user_emmet_leader_key='<Tab>'
	let g:user_emmet_settings = {
	\  'javascript.jsx' : {
		\      'extends' : 'jsx',
		\  },
	\}
call plug#end()

" colemak stuff
	noremap N J
	noremap n j
	noremap e k
	noremap E K

	noremap i l
	noremap I L
	noremap l i
	noremap L I

	noremap j n
	noremap J N
	noremap k e
	noremap K E

	"noremap ' ;
	"noremap " :

	noremap gh gk
	noremap gj gh
	noremap gk gj

	noremap zh zk
	"zK does not exist
	noremap zj zh
	noremap zJ zH
	noremap zk zj
	"zJ does not exist
	noremap z<Space> zl
	noremap z<S-Space> zL
	noremap z<BS> zh
	noremap z<S-BS> zH

	noremap <C-w>h <C-w>k
	noremap <C-w>H <C-w>K
	noremap <C-w>j <C-w>h
	noremap <C-w>J <C-w>H
	noremap <C-w>k <C-w>j
	noremap <C-w>K <C-w>J
	noremap <C-w><Space> <C-w>l
	noremap <C-w><S-Space> <C-w>L
	noremap <C-w><S-BS> <C-w>H

"wangblows
	cmap X se key=
	cmap jc !javac %
	cmap jr !javac %
	nmap <C-PageUp> ]s
	nmap <C-PageDown> [s
	set nu!
	set ai
	compiler gcc
	syn on
	set t_Co=256
	set shiftwidth=2
	set tabstop=2
	set backspace=2
	set nrformats=
	set spell
	set fileformat=unix
	set foldlevel=0
	set hlsearch
	set incsearch
	se guifont=terminus:h12:cANSI
	set nocompatible

colorscheme al-daxiin
hi Normal guibg=NONE ctermbg=NONE

"this autofolds via indent, but shows the first level of indent. Set foldlevel to 0 to fold everything
"zm increases foldlevel by one; zr decreases by one; zR decreases to zero
set foldmethod=indent

"python stuff
autocmd BufEnter *.py set shiftwidth=4
autocmd BufEnter *.py set tabstop=4
autocmd BufEnter *.py set expandtab

"java stuff
let java_allow_cpp_keywords=1

" lisp stuff
"set lisp
"set sm

"yaml stuff
autocmd BufEnter *.yaml set shiftwidth=2
autocmd BufEnter *.yaml set tabstop=2
autocmd BufEnter *.yaml set expandtab
autocmd BufEnter *.yml set shiftwidth=2
autocmd BufEnter *.yml set tabstop=2
autocmd BufEnter *.yml set expandtab

"js
autocmd BufEnter *.js set shiftwidth=2
autocmd BufEnter *.js set tabstop=2
