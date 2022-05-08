" automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"----------------------START OF PLUGINS----------------------
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"List of plugins.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " installing fzf to the system
Plug 'tpope/vim-surround' " surround.vim
Plug 'preservim/nerdtree' "nerdtree 
Plug 'jesseleite/vim-noh' " automatically clearing search highlight when cursor is moved
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"----------------------END OF PLUGINS----------------------

" search
set incsearch                 " search as characters are entered
set hlsearch                  " highlight matches
set ignorecase " case insensitive searching
set smartcase " but become case sensitive if you type uppercase character

" movement
:imap jk <Esc>
noremap J 5j
noremap K 5k
map <C-n> :NERDTreeToggle<CR>
