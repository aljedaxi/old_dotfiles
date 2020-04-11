"* is / for current word
"CTRL-N is tab
"abbr Lunix Linux
"cmap  browse saveas 
"cmap  browse confirm e 
"cmap  se textwidth=80 
"
call plug#begin()
	Plug 'mattn/emmet-vim'
	Plug 'othree/yajs.vim'

	"By the default, type <C-x> <C-o> in insert mode, Tsuquyomi shows completions.
	"Type <C-]> in normal mode or visual mode, Tsuquyomi navigates to the
	"location where the symbol under the cursor is defined.
	":TsuTypeDefinition command is similar to :TsuDefinition. :TsuTypeDefinition navigates to the location where the type of the symbol under the cursor is defined.
	"Type <C-^> in normal mode or visual mode, Tsuquyomi shows a list of location where the symbol under the cursor is referenced.
	"Using the command :TsuRenameSymbol, you can rename the identifier under the cursor to a new name
	"Move cursor onto readFile and call :TsuImport, so Tsuquyomi appends the import declaration.
	Plug 'leafgarland/typescript-vim'
	" Plug 'Quramy/tsuquyomi'
	" let g:tsuquyomi_shortest_import_path = 1
	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'mattn/vim-lsp-settings'
	Plug 'ryanolsonx/vim-lsp-typescript'

	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	let g:UltiSnipsEditSplit="horizontal"

	" There's also !, which starts the line off with a bang. Type !chmod +x and get :!chmod +x path/to/file.
	" Press y. to yank an absolute path for the file under the cursor.
	" Press ~ to go home.
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-fugitive'
	let g:user_emmet_settings = {
	\  'javascript.jsx' : {
		\      'extends' : 'jsx',
		\  },
	\}

	" Plug 'w0rp/ale'
	" let g:ale_fixers = {'javascript': ['xo']}
	" let g:ale_linters = {'javascript': ['xo']}
	" let g:ale_sign_error = '>' 
	" let g:ale_sign_warning = '.'
	" let g:ale_lint_text_changed = 'never'
	" let g:ale_lint_insert_leave = 0
	" let g:ale_lint_on_enter = 0 
	" let g:ale_fix_on_save = 1

	Plug 'vimwiki/vimwiki'
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
	" cmap jc !javac %
	" cmap jr !javac %
	nmap <C-PageUp> ]s
	nmap <C-PageDown> [s
	set nu!
	set ai
	compiler gcc
	syntax on
	set t_Co=256
	set shiftwidth=2
	set tabstop=2
	set backspace=2
	set nrformats=
	set spell spelllang=en_ca
	set fileformat=unix
	set foldlevel=0
	set hlsearch
	set incsearch
	se guifont=terminus:h12:cANSI
	set nocompatible
  "this autofolds via indent, but shows the first level of indent. Set foldlevel to 0 to fold everything
  "zm increases foldlevel by one; zr decreases by one; zR decreases to zero
  set foldmethod=indent

"general
  "the filesystem browser
  let g:netrw_banner = 0
	" no backups
	set nobk
	" mouse mode
	set mouse=a
	set ruler
	colorscheme al-daxiin
	hi Normal guibg=NONE ctermbg=NONE

" language server stuff
	" https://medium.com/@vanuan/vim-for-typescript-and-react-in-2020-9724b9139be2
	" https://github.com/prabirshrestha/vim-lsp
	map <F8>   :LspDocumentDiagnostics <CR>
	map <F2>   :LspHover <CR>
	map <A-F6> :LspReon
	map <A-F7> :LspReferences <CR>


" language stuff
	filetype plugin on
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
