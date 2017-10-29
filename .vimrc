" Vim config - optimized for minimalism

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'wavded/vim-stylus'
Plug 'kchmck/vim-coffee-script'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim', { 'on':  'CtrlP' }
"Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer --tern-completer' }
Plug 'editorconfig/editorconfig-vim'
Plug 'moll/vim-node', { 'for' : ['javascript', 'json', 'markdown'] }
Plug 'erikzaadi/vim-ansible-yaml', { 'for' : ['yaml', 'ansible', 'markdown'] }
Plug 'mtscout6/syntastic-local-eslint.vim', { 'for' : ['javascript', 'json', 'markdown'] }
Plug 'isRuslan/vim-es6', { 'for' : ['javascript', 'json', 'markdown'] }
Plug 'Yggdroot/indentLine'
Plug 'mtscout6/syntastic-local-eslint.vim', { 'for' : ['javascript', 'json', 'markdown'] }
Plug 'moll/vim-node', { 'for' : ['javascript', 'json', 'markdown'] }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': ['jinja', 'jinja2']}
Plug 'vim-scripts/nginx.vim', { 'for': ['nginx', 'markdown'] }
Plug 'tmux-plugins/vim-tmux', { 'for': ['tmux', 'markdown'] }
Plug 'docker/docker' , {'rtp': 'contrib/syntax/vim/'}
Plug 'robbles/logstash.vim'

call plug#end()


colorscheme solarized
let g:syntastic_yaml_checkers        = ['jsyaml']

let g:syntastic_check_on_open        = 0
let g:syntastic_auto_loc_list        = 1
let g:syntastic_javascript_checkers  = ['eslint']
let NERDTreeShowHidden               = 1
set expandtab
set statusline+=%#warningmsg#
set noswapfile
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set backspace=indent,eol,start
filetype indent on

" Filetypes

au BufNewFile,BufRead *tmux.conf set filetype=tmux
au BufNewFile,BufRead *.j2 set filetype=jinja

"autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'stylus', 'python', 'go', 'yaml', 'ansible', 'nginx', 'sh', 'bash=sh', 'zsh']

autocmd FileType markdown setlocal spell

" Spell-check Git messages

autocmd FileType gitcommit setlocal spell
" au BufRead,BufNewFile */playbooks/*.yml set filetype=ansible
au BufNewFile,BufRead *.yaml set filetype=yaml.ansible
au BufNewFile,BufRead *.yml set filetype=yaml.ansible
"map <silent> <F2> :NERDTreeToggle<CR>
au BufNewFile,BufReadPost *.md set filetype=markdown
"let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'stylus', 'python', 'go', 'yaml', 'ansible', 'nginx', 'sh', 'bash=sh', 'zsh']

" Spell-check Markdown files
"  autocmd FileType markdown setlocal spell
