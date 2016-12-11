set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" HERE
" Plugin 'hail2u/vim-css3-syntax'

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
Plugin 'Igorjan94/codeforces.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'elixir-lang/vim-elixir'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'junegunn/vim-easy-align'
Plugin 'gabrielsimoes/cfparser.vim'
" Plugin 'janko-m/vim-test'

"       " END HERE
"
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
map <F4> :CFProblemStatement
map <F5> :CFDownloadTests
map <F6> :CFTestAll
map <F7> :CFLastSubmissions
map <F8> :CFLogin
map <F9> :CFSubmit
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
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype c setlocal ts=8 sw=8 expandtab
autocmd Filetype cpp setlocal ts=8 sw=8 expandtab
colorscheme molokai
noswapfile

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/dist,*/deps,*/_build,*/node_modules,*/bower_components

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*.swp,*~,._*
map! <C-e> </<C-X><C-O>
" nmap T :TestFile<CR>
set nobackup
set directory=~/.vim/_temp//
set numberwidth=5
let g:jsx_ext_required = 0
" syntax off
