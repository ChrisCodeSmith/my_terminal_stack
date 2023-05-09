set nocompatible
set nofoldenable	" disable folding

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sheerun/vim-polyglot'
Plugin 'ghifarit53/tokyonight-vim'
" Rust IDE
Plugin 'rust-lang/rust.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" tmux fix
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
	  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
