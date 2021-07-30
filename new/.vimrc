syntax on

au BufRead /tmp/mutt-* set tw=72

set ignorecase
set smartcase
set laststatus=2
set statusline=%{&ff}\ \%{&fenc}\ \b%1.3n\ \%#StatusFTP#\%Y\ \%#StatusRO#\%R\ \%#StatusHLP#\%H\ \%#StatusPRV#\%W\ \%#StatusModFlag#\%M\ \%#StatusLine#\%f\%=\%1.7c\ \%1.7l/%L\ \%p%%

set tabstop=8
set softtabstop=4
set shiftwidth=4

set nocompatible
filetype plugin on

set cursorline
hi CursorLine cterm=NONE ctermbg=008
hi CursorColumn cterm=NONE ctermbg=008
:nnoremap H :set cursorcolumn!<CR>


" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [wiki_1]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

autocmd FileType vimwiki setlocal shiftwidth=2 softtabstop=2 expandtab
