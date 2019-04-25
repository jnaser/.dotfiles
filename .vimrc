"jnaser .vimrc

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Vim Plug start
call plug#begin()

	Plug 'scrooloose/nerdtree'
        Plug 'flazz/vim-colorschemes'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
        Plug 'lervag/vimtex'
	Plug 'xuhdev/vim-latex-live-preview'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-markdown'
	Plug 'vimwiki/vimwiki'
	Plug 'suan/vim-instant-markdown'




"Vim Plug end
call plug#end()

"Powerline settings
let g:airline_theme='sol'
set encoding=utf-8

"Vim markdown settings
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"Vim instant markdown settings
let g:instant_markdown_autostart = 0

"Set viewer for Latex live preview
let g:livepreview_previewer = 'open -a "PDF Expert"'

"Updatetime for Latex live preview
autocmd Filetype tex setl updatetime=1

"Color scheme
set t_Co=256
set term=xterm
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
colorscheme bubblegum-256-light
set bg=light	

" Toggle Nerdtree
noremap <C-D> :NERDTreeToggle<CR>
vnoremap <C-D> :NERDTreeToggle<CR>
inoremap <C-D> :NERDTreeToggle<CR>

" Toggle Plugins/Functions
nnoremap <F5> :NERDTreeToggle<CR>

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

"<Leader> Rebind
let mapleader = ","

"Remove Highlighting from last search by binding nohl to crtl(<c->) + n (<c-n>)
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Quick save
noremap <C-W> :update<CR>
vnoremap <C-W> <C-C>:update<CR>
inoremap <C-W> <C-O>:update<CR>

"Save and quit
noremap <Leader>w :wq<CR>

"Quick quit 
noremap <Leader>q :quit<CR>  " Quit current window
noremap <Leader>Q :qa!<CR>   " Quit all windows

" bind crtl+<movement> keys to move around the windows, instead of using crtl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Make new Tab and close tab
map <C-p> :tabnew<CR>
map <C-x> :tabclose<CR>				

"Sort in Visual Mode
vnoremap <Leader>s :sort<CR>

"Move Blocks of Text in Visual Mode. Select Text and press > to move Text to the left or use < to move text to the right
vnoremap < <gv 
vnoremap > >gv

"Highlight Syntax
filetype off
filetype plugin indent on
syntax on

"Show number of line permanently
"set number

"Make line break only after whole words and not in the middle of a word
set linebreak

"Toggle line number
map <Leader>ln :set number!<CR> "! makes it possible to toggle a command

"Set interactive bash as the default vim shell 
set shell=bash\ -i

"Disable Backup Files
"set no backup 
"set nowritebackup
"set noswapfile


