set nocompatible "prevent vim freak out when handling stuff like line continuations in vimscript.
set noshowmode "to get rid of mode information since lightline statusline has it

" testing for changes via yadm

" automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"---------------------------------------
"START OF PLUGINS
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"List of plugins.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " installing fzf to the system
Plug 'tpope/vim-surround' " surround.vim
Plug 'itchyny/lightline.vim' "lightline statusline
Plug 'preservim/nerdtree' "nerdtree 
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"END OF PLUGINS
"---------------------------------------


"START OF VIM CUSTOMIZATIONS

let g:lightline = { 
			\ 'colorscheme': 'wombat',
		       	\ }

"Line numbers. Use relative for all lines except the current one
set number                    " Show current line number

"Search
set incsearch                 " search as characters are entered
set hlsearch                  " highlight matches
set ignorecase " case insensitive searching
set smartcase " but become case sensitive if you type uppercase character
nnoremap <esc> :noh<CR>
let mapleader = "\<Space>"
:imap jk <Esc>
nnoremap <silent> <Leader><Space> :FZF<CR>
noremap J 5j
noremap K 5k
map <C-n> :NERDTreeToggle<CR>
set laststatus=2 " enables lightline to show up in tmux
