" General  
set ai                  " auto indenting
set history=100         " keep 100 lines of history
filetype plugin on      " use the file type plugins
set clipboard=unnamed   " allow use of copy/paste to clipboard using yy

" set up the indenting for files
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
filetype indent on		" load filetype-specific indent files

set number				" show line numbers
set showcmd				" show last used command in bottom right bar
set cursorline			" highlight the current line
" Basic UI commands
set ruler               " show the cursor position
syntax on               " syntax highlighting
set wildmenu			" visual autocomplete for command menu
set lazyredraw			" redraw screen only when we need it to
set showmatch			" highlight matching braces/parens
" Searching
set incsearch			" search as characters are entered
set hlsearch			" highlight matches
						" Turn off search highlighting by pressing space
nnoremap <leader><space> :nohlsearch<CR>
" Folding
set foldenable			" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10		" most possible nests is 10
set foldmethod=indent	" fold based on indent level
" Movement
nnoremap j gj			" Move upvertically by visual line, not actual line
nnoremap k gk			" Move down vertically by visual line, not actual line
inoremap jk <esc>		" remap esc key to jk key
" Bells
set noerrorbells visualbell t_vb= " turn the annoying beeping off


" When editing a file, always jump to the last cursor position
" autocmd BufReadPost *
" \ if ! exists("g:leave_my_cursor_position_alone") |
" \ if line("'\"") > 0 && line ("'\"") <= line("$") |
" \ exe "normal g'\"" |
" \ endif |
" \ endif
"
