" ****************************************************************************
" *                  .vimrc for all operating systems 
" *                  Author: Rolf Jahnel 
" *                  Date: 26.05.2021
" *                  Edit :edit $MYVIMRC
" *                  Reload :so %
" ****************************************************************************

syntax on
filetype plugin on
set path+=**
set viminfo+=n
set nocompatible                " Use vim, not vi api
set noswapfile 		            " Disable swapfile
set number
set cursorline
set whichwrap=b,s,<,>,[,]   
set hlsearch
set encoding=utf-8	            " UTF encoding
set listchars=tab:▸\ ,eol:¬     " Use the same symbols as TextMate for tabstops and EOLs
highlight NonText guifg=#4a4a59 
highlight SpecialKey guifg=#4a4a59

" https://stackoverflow.com/questions/64086331/error-detected-while-processing-function-snr70-setvals-e121-undefined-varia
"
let g:pydiction_location = expand('~/.vim/bundle/Pydiction/complete-dict')

set noshowmode                  " to get rid of thing like --INSERT--
set noshowcmd                   " to get rid of display of last command
set shortmess+=F                " to get rid of the file name displayed in the command line bar
set laststatus=2	            " Always show status bar
set autoread		            " Autoload files that have changed outside of vim
set backspace=2                 " Fix backspace behavior on most terminals
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd BufEnter * silent! lcd %:p:h
" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Autoload Plugins
" Plugins {{{
execute pathogen#infect()
filetype plugin indent on       " required by Pathogen Plugin Manager
set clipboard+=unnamed	        " Use system clipboard
set showmatch			        " highlight a matching [{()}] when cursor is placed on start/end character
set shortmess+=I		        " Don't show intro
set splitbelow			        " Better splits (new windows appear below and to the right)
set splitright

" ====================== Hide the toolbar, menu, scrollbars ==================
if has("gui_running")
	set guioptions-=m           "remove menu bar
	set guioptions-=T           "remove toolbar
	set guioptions-=r           "remove right-hand scroll bar
	set guioptions-=L           "remove left-hand scroll bar
endif

" ======================= Colors & Fonts =====================================
set guifont=Source\ Code\ Pro\ for\ Powerline:h15    
set background=dark
colorscheme afterglow
highlight Cursor guibg=lightgreen
highlight Visual guibg=lightgreen guifg=black

" no spellcheck on md-Files
autocmd BufRead,BufNewFile *.md setlocal nospell

" CTRLP-Path
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
nnoremap <C-b> :CtrlPBuffer<cr> " Map CtrlP buffer mode to Ctrl + B.

" Code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Git gutter
let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 1
highlight clear SignColumn

" Snippets
let g:vimwiki_table_mappings = 0
"autocmd FileType wiki UltiSnipsAddFiletypes vimwiki

" Netrw settings 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_keepdir= 1
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'
let g:netrw_hide = 1 

nnoremap <Tab> :call ToggleNetRW()<CR>

au BufRead,BufNewFile *.wiki set filetype=vimwiki
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

let g:vimwiki_hl_headers = 1    " highlight headers with different colors
let g:vimwiki_hl_cb_checked = 1 " highlight completed tasks
"let g:vimwiki_listsyms = '✗○◐●✓'
"================================== Airline ==================================
let g:airline_symbols = {}
let g:airline_theme='papercolor'
if has("gui_running")
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.whitespace = 'Ξ'
endif

"============================ Calendar for Vimwiki ===========================
let g:vimwiki_use_calendar = 1
"let g:vimwiki_list = [{'auto_diary_index': 1, 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [{'auto_diary_index': 1}]
au FileType vimwiki setlocal shiftwidth=4 tabstop=4 noexpandtab
let g:calendar_mruler = 'Jan,Feb,Mär,Apr,Mai,Jun,Jul,Aug,Sep,Okt,Nov,Dez'
let g:calendar_wruler = 'So Mo Di Mi Do Fr Sa'

let g:vimwiki_diary_months = {
      \ 1: 'Januar', 2: 'Februar', 3: 'März',
      \ 4: 'April', 5: 'Mai', 6: 'Juni',
      \ 7: 'Juli', 8: 'August', 9: 'September',
      \ 10: 'Oktober', 11: 'November', 12: 'Dezember'
      \ }

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

"================================ path, depends on os =======================
if has('unix')
	if has('mac')           " osx
		let g:vimwiki_list = [
                        \{'path': '~/Google Drive/TXT/mywiki/personal.wiki'},
                        \{'path': '~/Google Drive/TXT/mywiki/tech.wiki'}
        		        \]	

		set runtimepath^=~/.vim/bundle/ctrlp.vim
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  	else                    " linux, bsd, etc
		let g:vimwiki_list = [
                        \{'path': '~/Google Drive/TXT/mywiki/personal.wiki'},
                        \{'path': '~/Google Drive/TXT/mywiki/tech.wiki'}
                		\]

		set runtimepath^=~/.vim/bundle/ctrlp.vim
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	endif
elseif has('win32') || has('win64')
	let g:vimwiki_list = [{'path': '~/TXT/mywiki/personal.wiki'},
                        \ {'path': '~/TXT/mywiki/tech.wiki'}]
 	
		set runtimepath^='/Users/jahnel.rolf/.vim\bundle/ctrlp.vim
        set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
endif

" ------------------------- Key bindings --------------------------
:let mapleader=","
nmap <leader>p :CtrlPBuffer<CR>
nmap <leader>d :colorscheme afterglow<CR>
nmap <leader>h :colorscheme basic-light<CR>

" Für Hilfetexte in Vim
nnoremap Ü <C-O>      " Ü-für Hilfe vor und zurück
nnoremap ü <C-]>

" https://vim.fandom.com/wiki/Jump_to_tag_(help_topic)_with_German_keyboard
map <S-F1> <C-]>       " F1 für Hilfe
noremap <c-theChar> <c-]>
nnoremap t <C-]>   " Jump tag t and back with ctrl-t

nnoremap <leader>t :tag <c-r><c-w><cr>
map <Leader><Space> :noh<CR>

nnoremap <F5> "=strftime("%c")<CR>
inoremap <F5> <C-R>=strftime("%d.%m.%Y")<CR>
map <C-a> :call ToggleCalendar()<CR>

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <Leader>c :terminal<CR>
nnoremap <leader>m :b#<cr>                  " toggle between buffers
autocmd FileType python map <buffer> <c-x> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <c-x> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

nnoremap <BS> X
noremap rr <C-R>                " Redo with U instead of Ctrl+R
inoremap kj <esc>				" esc in insert mode
cnoremap kj <C-C>				" esc in command mode
inoremap cp :CtrlP              " start CtrlP
noremap cp :CtrlP
inoremap <C-Space> <C-x><C-o>  	
inoremap <C-@> <C-Space>

" set Tab-width
map <F7>   :Stab <return>

" Spell checking german
map <F8>   :setlocal spell spelllang=de <return>
map <S-F8> :setlocal nospell <return>

" show or hide invisible characters
noremap <F9> :set list!<CR>
inoremap <F9> <C-o>:set list!<CR>
cnoremap <F9> <C-c>:set list!<CR>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" =============================== Functions ==================================

function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()<CR>

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  	let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  	if l:tabstop > 0
    	let &l:sts = l:tabstop
    	let &l:ts = l:tabstop
    	let &l:sw = l:tabstop
  	endif
  	call SummarizeTabs()
endfunction

function! SummarizeTabs()
	try
    	echohl ModeMsg
    	echon 'tabstop='.&l:ts
	    echon ' shiftwidth='.&l:sw
    	echon ' softtabstop='.&l:sts
    	if &l:et
      		echon ' expandtab'
    	else
      		echon ' noexpandtab'
    	endif
  	finally
    	echohl None
  	endtry
endfunction

function ToggleNetRW()
    if exists("g:netrw_buffer") && bufexists(g:netrw_buffer)
        exe "bd".g:netrw_buffer | unlet g:netrw_buffer
    else
        Vexplore | let g:netrw_buffer=bufnr("%")
    endif
endfunction
