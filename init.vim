call plug#begin("~/local/share/nvim/plugged")


Plug 'roxma/nvim-completion-manager'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prettier/vim-prettier'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'thosakwe/vim-flutter'


call plug#end()


set number
set relativenumber


set shiftwidth=2
set autoindent
set smartindent

" for nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" automaticall close nvim if NERDTree is the only thing left open\
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle 
nnoremap <silent> <C-v> :NERDTreeToggle<CR>


" for built-in neovim terminal, just have to do <Ctrl-N>
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
	split term://bash
	resize 10
endfunction
nnoremap <C-x> :call OpenTerminal()<CR>
























