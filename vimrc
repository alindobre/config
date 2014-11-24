" Personal ~/.vimrc file
" Alin Dobre <alinmd at gmail.com>

" Highlight ugly lonely whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Comments should be blue, not dark blue
highlight Comment ctermfg=blue

set smartindent
set tabstop=2
set shiftwidth=2
set hlsearch
set ignorecase
set noexpandtab

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Display tabs
set list listchars=tab:\|-,trail:.,extends:>

" Use real tabs for Makefiles, no matter what
autocmd FileType make set noexpandtab shiftwidth=8

" Git commits should be wrapped at 70 chars with no automatic wrap-as-you-type
autocmd FileType gitcommit set textwidth=70 formatoptions-=tc

" From http://vimdoc.sourceforge.net/htmldoc/usr_21.html:
" the ' option is used to specify how many files for which you save marks (a-z).
" The f option controls whether global marks (A-Z and 0-9) are stored.
" he < option controls how many lines are saved for each of the registers.
set viminfo='100,f1,<500

highlight Search ctermfg=blue
