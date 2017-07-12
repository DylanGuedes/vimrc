set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" HERE

" Plugin 'godlygeek/tabular'
" Plugin 'bling/vim-airline'       " UI statusbar niceties
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
" Plugin 'morhetz/gruvbox'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
Plugin 'dandorman/vim-colors'
" Plugin 'plasticboy/vim-markdown'
Plugin 'roman/golden-ratio'
" Plugin 'digitaltoad/vim-pug'
" Plugin 'tpope/vim-dispatch'
" Plugin 'janko-m/vim-test'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/AnsiEsc.vim'
" Plugin 'gabrielsimoes/cfparser.vim'
" Plugin 'ktvoelker/sbt-vim'
" Plugin 'derekwyatt/vim-scala'
" Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
" Plugin 'junegunn/vim-easy-align'
Plugin 'slashmili/alchemist.vim'
" Plugin 'python-rope/ropevim'
" Plugin 'posva/vim-vue'
" Plugin 'python-mode/python-mode'
" UNUSED PACKAGES
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'benmills/vimux'
" Plugin 'Igorjan94/codeforces.vim'
" Plugin 'chriskempson/base16-vim'
" Plugin 'nono/vim-handlebars'
" Plugin 'joukevandermaas/vim-ember-hbs'
" Plugin 'janko-m/vim-test'

"       " END HERE
"
call vundle#end()            " required
filetype plugin indent on    " required


set number " line numbering
set t_Co=256 " Force 256 colors


set t_ut= " improve screen clearing by using the background color
" set background=dark
syntax enable
set enc=utf-8
" set term=screen-256color
" let $TERM='screen-256color'

set cul
" set cuc
" :highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
map <Space> :bnext<cr>
" map <F4> :CFProblemStatement
" map <F5> :CFDownloadTests
" map <F6> :CFTestAll
" map <F7> :CFLastSubmissions
" map <F8> :CFLogin
" map <F9> :CFSubmit
map <F3> :TestSuite
"
let test#strategy = "dispatch"
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
" set background=dark
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
autocmd Filetype latex setlocal ts=4 sw=4 expandtab
autocmd Filetype tex setlocal ts=4 sw=4 expandtab
" colorscheme molokai
" colorscheme gruvbox
colorscheme PaperColor
noswapfile

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/dist,*/deps,*/_build,*/node_modules,*/bower_components
nnoremap Q <nop>

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*.swp,*~,._*
" map! <C-e> </<C-X><C-O>
" nmap T :TestFile<CR>
set nobackup
set directory=~/.vim/_temp//
set numberwidth=5
" let g:jsx_ext_required = 0
" syntax off
"
"
" set spell spelllang=pt
" syntax spell toplevel
let ropevim_vim_completion=0
let ropevim_extended_complete=0
let ropevim_codeassist_maxfixes=0
let ropevim_enable_autoimport=0
