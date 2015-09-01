colorscheme onedark
syntax enable
set wrap
set number
nmap <C-L> :set invnumber<CR>
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
autocmd BufEnter * silent! lcd %:p:h
set cursorline
set clipboard=unnamed
autocmd FileType javascript noremap <s-f> :call JsBeautify()<cr>
autocmd FileType css noremap <s-f> :call CSSBeautify()<cr>
autocmd FileType html noremap <s-f> :call HtmlBeautify()<cr>
map <c-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
