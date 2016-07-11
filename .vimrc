set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" HERE
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'elixir-lang/vim-elixir'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'aaronjensen/vim-sass-status'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'othree/html5.vim'
" Plugin 'leafgarland/typescript-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jpo/vim-railscasts-theme'
" Plugin 'jtratner/vim-flavored-markdown'
  " let g:markdown_fenced_languages=['ruby', 'javascript', 'elixir', 'clojure', 'sh', 'html', 'sass', 'scss', 'haml', 'erlang']

" autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
" autocmd FileType markdown set tw=80

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nono/vim-handlebars'
Plugin 'tomtom/tcomment_vim'

Plugin 'bling/vim-airline'       " UI statusbar niceties
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
Plugin 'chriskempson/base16-vim'
Plugin 'dandorman/vim-colors'
Plugin 'roman/golden-ratio'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'janko-m/vim-test'

" END HERE

call vundle#end()            " required
filetype plugin indent on    " required


set number " line numbering
set t_Co=256 " Force 256 colors


set t_ut= " improve screen clearing by using the background color
set background=dark
syntax enable
set enc=utf-8
set term=screen-256color
let $TERM='screen-256color'

set cul
set cuc
" :highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
map <Space> :bnext<cr>
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>
" nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set showcmd
set encoding=utf-8
set scrolloff=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set background=dark
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

nmap :E :Explore
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype c setlocal ts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=4 sw=4 expandtab
" colorscheme railscasts
colorscheme molokai

noswapfile
" set listchars+=space:.
" set list

