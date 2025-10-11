set nocompatible
filetype off

" Settings to replace tab. Use :retab for replacing tab in existing files
set tabstop=4
set shiftwidth=4
set expandtab

" Have vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line ("'\"") > 1 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Other general vim options:
syntax on
set showmatch 		" Show matching brackets
set ignorecase 		" Do case insensitive matching
set incsearch		" Show partial matches for a search phrase
set nopaste
set number		    " Show line numbers
set undolevels=1000

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" For JSON formatting
map j !python -m json.tool<CR>

" For XML formatting
map l !xmllint --format --recover -<CR>

" Pathogen plugin (NERDTree->Explorer)
" execute pathogen#infect()
