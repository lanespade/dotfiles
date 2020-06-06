" System Defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1

" Basic Defaults
set nu
set hls
set tabstop=4

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'dense-analysis/ale'
call plug#end()

" ALE Settings 
let g:ale_fixers = {}
let g:ale_fixers['*'] = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fixers.javascript = ['prettier', 'eslint']
let g:ale_fixers.json = ['prettier']

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" Enable Fuzzy Finder
set rtp+=/usr/local/opt/fzf
