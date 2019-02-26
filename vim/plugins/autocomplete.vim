Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'

if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
          \ 'name': 'solargraph',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
          \ 'initialization_options': {"diagnostics": "true"},
          \ 'whitelist': ['ruby'],
          \ })
endif

" https://github.com/prabirshrestha/vim-lsp/wiki/Servers-PHP

" May need to do something like:
" ln -s ~/.asdf/installs/nodejs/8.11.1/.npm/ ~/.npm-global
au User lsp_setup call lsp#register_server({
      \ 'name': 'intelephense',
      \ 'cmd': {server_info->['node', expand('~/.npm-global/lib/node_modules/intelephense-server/lib/server.js'), '--stdio']},
      \ 'whitelist': ['php'],
      \ })

" https://github.com/prabirshrestha/asyncomplete.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
