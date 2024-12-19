set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/bash
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'git://git.wincent.com/command-t.git'
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'itchyny/lightline.vim'
	Plugin 'octol/vim-cpp-enhanced-highlight'
	Plugin 'google/vim-maktaba'
	Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
	Plugin 'google/vim-glaive'

	" Vim Colorschemes
	Plugin 'morhetz/gruvbox'
	Plugin 'sainnhe/sonokai'
	Plugin 'jaredgorski/spacecamp'
	Plugin 'ajmwagar/vim-deus'
	Plugin 'ayu-theme/ayu-vim'
	Plugin 'tomasr/molokai'
	Plugin 'fmoralesc/molokayo'
	Plugin 'marcopaganini/termschool-vim-theme'
	Plugin 'whatyouhide/vim-gotham'
	Plugin 'evprkr/galaxian-vim'
	Plugin 'preservim/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'chriskempson/base16-vim'
	Plugin 'preservim/nerdcommenter'
	Plugin 'mengelbrecht/lightline-bufferline'


call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

set nu
set tabstop=2
set shiftwidth=2
set nowrap
set sidescroll=1
syntax on
set laststatus=2
set nomousehide
set termguicolors     " enable true colors support
let ayucolor="dark"
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
" let g:cpp_concepts_highlight = 1
let NERDTreeMapOpenInTab='<ENTER>'
cnoreabbrev run !
set path=.,/usr/include,,/usr/include/c++/*/
nnoremap<C-s> :w<CR>
"let g:lightline = { 'colorscheme': 'gotham' }
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F5> :!clear <CR> :make <CR>
map <C-f> :NERDTreeTabsToggle<CR>
colo molokai
set nofoldenable
set foldmethod=indent
let g:NERDCreateDefaultMappings = 1
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
noremap <leader>p :tabprev<cr>
noremap <leader>n :tabnext<cr>

noremap <space>bd :bdelete<cr>
noremap <space>bn :bnext<cr>
noremap <space>bp :bprevious<cr>

noremap > >>
noremap < <<

set nobackup nowritebackup

noremap <space>wF :tabnew<cr>

noremap <space>cl :call nerdcommenter#Comment('n', 'toggle')<CR>

let g:lightline = {
				\ 'tabline': {
			\   'left': [ ['buffers'] ],
			\   'right': [ ['close'] ]
      \ },
			\ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
		\ }

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,typescript,arduino AutoFormatBuffer clang-format
  autocmd FileType clojure AutoFormatBuffer cljstyle
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType elixir,eelixir,heex AutoFormatBuffer mixformat
  autocmd FileType fish AutoFormatBuffer fish_indent
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType haskell AutoFormatBuffer ormolu
  " Alternative for web languages: prettier
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType jsonnet AutoFormatBuffer jsonnetfmt
  autocmd FileType julia AutoFormatBuffer JuliaFormatter
  autocmd FileType kotlin AutoFormatBuffer ktfmt
  autocmd FileType lua AutoFormatBuffer luaformatterfiveone
  autocmd FileType markdown AutoFormatBuffer prettier
  autocmd FileType ocaml AutoFormatBuffer ocamlformat
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType ruby AutoFormatBuffer rubocop
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType swift AutoFormatBuffer swift-format
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
