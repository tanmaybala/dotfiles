""" Plugins:
call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
    Plug 'chiel92/vim-autoformat'
 	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-commentary'
    Plug 'puremourning/vimspector'
	Plug 'valloric/youcompleteme'
	Plug 'junegunn/fzf'
	Plug 'jremmen/vim-ripgrep'
	Plug 'gyim/vim-boxdraw'
call plug#end()

""" My Settings:
let mapleader=" "					"Maping Leader.
set number relativenumber			"Line Number and Relative number.
set bg=dark							"Background to dark.
set backspace=indent,eol,start		"For Backspace to work.
set tabstop=4						"Tabs limit to 4.
set incsearch						"Incremental Search.
set scrolloff=10					"Limit cursor to go dow uninl only 30 linse. Keep cursor in middle.
set modifiable						"Enable modify the dir.
set signcolumn=yes					"Sign column to check the errors notification.
set nowrap							"No Wrap, setting wrap to false.
set path+=**						"Setting path for file incremetal search in project for Files (Fuzzy search) Note:- :b filename/filenameSubset, b-stands for buffer, to move around the opened files.
set wildmenu						"Setting menu on (Fuzzy finder, file name, etc in botton bar).
set nocompatible					"Telling Vim to not act like VI editor.
syntax on							"File syntax on(netrw).
filetype plugin on					"Based on File type the plugin will be on. Its Default Plugin Comes with VIM.(For netrw).
set laststatus=2 					"set the status line
set noswapfile
set encoding=utf-8
set clipboard=exclude:.*

"" Mapping Keys:
let @z="\"\""
let @y="\'\'"
let @x="[]"
let @v="()"
let @u="{}"
inoremap " <ESC>"zpha
inoremap ' <ESC>"ypha
inoremap [ <ESC>"xpha
inoremap ( <ESC>"vpha
inoremap { <ESC>"upha
nnoremap <C-_> :Commentary<CR>
inoremap ,voi <ESC>:-1read $HOME/.vim/shotrcuts/.function.java<CR>fFciw
inoremap ,main <ESC>:-1read $HOME/.vim/shotrcuts/.main.java<CR>fFciw
inoremap ,str <ESC>:-1read $HOME/.vim/shotrcuts/.funcstring.java<CR>fFciw
inoremap ,fcint <ESC>:-1read $HOME/.vim/shotrcuts/.funcint.java<CR>fFciw
inoremap ,bol <ESC>:-1read $HOME/.vim/shotrcuts/.funcboolean.java<CR>fFciw
inoremap ,con <ESC>:-1read $HOME/.vim/shotrcuts/.funconst.java<CR>fFciw
inoremap ,fi <ESC>:read $HOME/.vim/shotrcuts/.if.java<CR>f(ci)
inoremap ,el <ESC>:read $HOME/.vim/shotrcuts/.ifelse.java<CR>f(ci)
inoremap ,syso <ESC>:-1read $HOME/.vim/shotrcuts/.print.java<CR>18l
inoremap ,for <ESC>:-1read $HOME/.vim/shotrcuts/.for.java<CR>fTciw
inoremap ,cls <ESC>:-1read $HOME/.vim/shotrcuts/.class.java<CR>fFciw
inoremap ,intar <ESC>:-1read $HOME/.vim/shotrcuts/.intArray.java<CR>faciw
inoremap ,strar <ESC>:-1read $HOME/.vim/shotrcuts/.strArray.java<CR>faciw
vnoremap <C-c> "*y :let @+=@*<CR>
nnoremap <C-p> "+p
nnoremap Q <Nop>
nnoremap Q :q<CR>
nnoremap <Leader>e :Lexplore<bar>vertical resize 25<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>so :source ~/.vimrc<CR>
nnoremap <Leader>vs :w !sudo tee %<CR>
nnoremap <Leader>ff :find 
nnoremap <Leader>tr :hi Normal guibg=NONE ctermbg=NONE<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>b :bN<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>json :%!jq .<CR>
nnoremap gd :YcmCompleter GoTo<CR>
nnoremap <silent> <C-f> :FZF<CR>
nnoremap <silent> vimrc :e ~/.vimrc<CR>
nnoremap <silent> bashrc :e ~/.bashrc<CR>
nnoremap <silent> conky :e ~/.config/conky/.conkyrc<CR>
nnoremap <silent> 3conf :e ~/.config/i3/config<CR>
nnoremap <silent> bashal :e ~/.bash_aliases<CR>
nnoremap t o<ESC>k
nnoremap T O<ESC>j
nnoremap ,antc :!ant <CR>
nnoremap ,antr :!ant 
nnoremap <Leader>sw :set wrap!<CR>
""" Disabling Arrow Keys:
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>:echo "No left Right you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
nnoremap <Leader>,bs :.!boxes -d stone<CR>
nnoremap <Leader>,bn :.!boxes -d nuke<CR>7jFjxxxi___<ESC>3jo<ESC>

""" For Making Tags: (NOTE: Make sure to install ctags first)
" setlocal suffixesadd=.java
"" command! MakeTags !ctags -R
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

""" AutoComplete:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" - Use ^n and ^p to go back and forth in the suggestion list

""" Transparent Background:
 ""autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
 ""au BufRead * hi Normal guibg=NONE ctermbg=NONE

""" Color Scheme:
colorscheme gruvbox

""" Alt Key Settings: 
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set ttimeout ttimeoutlen=50

""" Formater Settings:
autocmd BufWrite *.java :Autoformat
autocmd BufWrite *.bash :Autoformat
autocmd BufWrite *.sh :Autoformat
autocmd BufWrite *.java silent! ::g/^\s*$/d
autocmd BufEnter *.java silent! !start /min ctags -R .
autocmd BufRead *.java silent! !start /min ctags -R .

""" Powerline Setup:
" install fonts-Powerline for setup Powerline properly.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

""" Java AutoComplete:
set completeopt-=preview
let g:syntastic_java_checkers = []
let g:ycm_semantic_triggers = {'java': [ 're!\w{2}' ]}

""" FZF Settings:
command! LS call fzf#run(fzf#wrap({'source': 'ls'}))
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
command! -bang -complete=dir -nargs=? LS call fzf#run(fzf#wrap({'source': 'ls', 'dir': <q-args>}, <bang>0))
nnoremap <silent> <C-l> :LS .<CR>
command! -bang -complete=dir -nargs=? LS call fzf#run(fzf#wrap('ls', {'source': 'ls', 'dir': <q-args>}, <bang>0))
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
let g:fzf_tags_command = 'ctags -R'

