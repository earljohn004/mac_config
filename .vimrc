set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize set
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
"Plugin 'tomasr/molokai'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'hari-rangarajan/CCTree' "works for C Code only. Function Trace

Plugin 'fatih/vim-go'
Plugin 'iamcco/markdown-preview.nvim' 

" TESTING PLUGIN
Plugin 'junegunn/fzf'
call vundle#end()
filetype plugin indent on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

let g:deoplete#enable_at_startup = 1


set incsearch
set hlsearch
set nu
let g:molokai_original=1
set smartindent
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256
colorscheme fu
set cursorline 
set tags=tags;/ 
set nowrap

"Macvim settings
set guifont=DejaVuSansMonoForPowerline:h14

"Custom Vim Map
inoremap jk <Esc>
map <F7> :tabn <CR>
nnoremap <silent> <F9> :TagbarToggle<CR>

" nerdtree
	au BufNewFile,BufRead nerdtree_* set filetype=txt
	let g:NERDTreeWinPos ="right"
	let g:NERDTreeCreatePrefix="nerdtree_"
	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"
	hi Directory guifg=#ff0000 ctermfg=darkcyan
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
	" F4 to toggle nerdtree
	noremap <F4> :NERDTreeToggle<CR>

" FZF Binding
noremap <F5> :FZF<CR>

syntax on
" set t_Co=256
" set term=screen-256color
" colorscheme fu
colorscheme fu
hi CursorLine cterm=Underline term=underline
let g:neocomplete#enable_at_startup=1

"let  g:UltiSnipsSnippetDirectories=["Ultisnips","~/.vim/bundle/vim-snippets/Ultisnips/"]
"
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0
let g:neocomplete#enable_at_startup=1                                                        
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='base16_summerfruit'

" Add cscope support
if has("cscope")
	set csprg=/usr/local/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
	set cscopetag
	
" set cscope_mapping
" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d). The result of your cscope
" search will be displayed in the current window. You can use CTRL-T to
" go back to where you were before the search.  

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

" Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type makes the vim window split horizontally, with search result
" displayed in  the new window.
"
" (Note: earlier versions of vim may not have the :scs command, but it  can be simulated roughly via:
" nmap <C-@>s <C-W><C-S> :cs find s  <C-R>=expand("<cword>")<CR><CR>	

nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	

" Hitting CTRL-space *twice* before the search type does a vertical 
" split instead of a horizontal one (vim 6 and up only)
" (Note: you may wish to put a 'set splitright' in your .vimrc
" if you prefer the new window on the right instead of the left

nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

endif
