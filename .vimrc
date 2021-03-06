"jnaser .vimrc
"github.com/jnaser

"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Vim Plug start
call plug#begin()

	Plug 'scrooloose/nerdtree'
        Plug 'flazz/vim-colorschemes'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-markdown'
	Plug 'vimwiki/vimwiki'
	Plug 'suan/vim-instant-markdown'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	Plug 'lervag/vimtex'
	Plug 'vim-syntastic/syntastic'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Valloric/YouCompleteMe'
	Plug 'ervandew/supertab'
	Plug 'junegunn/goyo.vim'

"Vim Plug end
call plug#end()

"=================Settings for Synctastic========================
"================================================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Do not show the following error messages
let g:syntastic_quiet_messages = { "regex": [
        \ '\mpossible unwanted space at "{"',
        \ 'You should enclose the previous parenthesis with `{}',
	\'Wrong length of dash may have been used',
	\'No italic correction',
        \ ] }
"=================Settings for Ultisnips=========================
"================================================================

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "kj"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

"=================Settings for YouCompleteMe=====================
"================================================================

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'



"==============Powerline settings===============================
let g:airline_theme='sol'
set encoding=utf-8

"Vim markdown settings
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"Vim instant markdown settings
let g:instant_markdown_autostart = 0


"============Latex Live Preview=================================
"Set viewer for Latex Live Preview
let g:livepreview_previewer = 'open -a "PDF Expert"'

"Set engine for Latex Live Preview
let g:livepreview_engine = 'pdflatex'

"Updatetime for Latex Live Preview
autocmd Filetype tex setl updatetime=1

"Prevent recompilation on cursor hold
let g:livepreview_cursorhold_recompile = 0

"==========================Goyo=================================
noremap <C-G> :Goyo<CR>
vnoremap <C-G> :Goyo<CR>
inoremap <C-G> :Goyo<CR>



"Color scheme
set t_Co=256
set term=xterm
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
colorscheme bubblegum-256-light
set bg=light	

"===Vimiki===
let g:vimwiki_list = [{'path': '~/Dropbox/wiki'}] " set path to Documents to sync with iCloud 
let g:vimwiki_ext = '.md' " set extension to .md
let g:vimwiki_global_ext = 0 " make sure vimwiki doesn't own all .md files
set nocompatible
filetype plugin on

"===Nerdtree
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
noremap <C-n> :nohl<CR> vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Use CTRL + c to yank to clipboard
vnoremap <C-c> "+y

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

"===Tabs===
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
"Is needed vor Instantmarkdownpreview 
"set shell=bash\ -i

"Disable Backup Files
"set no backup 
"set nowritebackup
"set noswapfile

let g:tex_flavor = "latex"

