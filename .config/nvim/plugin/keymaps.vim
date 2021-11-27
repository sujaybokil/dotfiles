"Escape the escape key
imap jk <Esc>
vmap jk <Esc>

" Split Ninja
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Terminal shizz
nnoremap <leader>tt :new term://zsh<CR>:resize16<CR>:startinsert<CR>clear<CR>
tnoremap jk <C-\><C-n>

" Buffer magic
nnoremap <leader>. :bn<CR>
nnoremap <leader>, :bp<CR>

" Break outta brackets
inoremap <C-L> <Right>

" GIT INTEGRATION DAMNNNN
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>

" Didnt wanna make an extra file for 4 lines
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Session management
nnoremap <leader>sl :SearchSession<CR>
nnoremap <leader>ss :wall<CR>:SaveSession ~/.local/share/nvim/sessions/
nnoremap <leader>sd :DeleteSession

" Comment out stuff ezz
nnoremap <leader>cc :CommentToggle<CR>

" Tab backwards
inoremap <S-Tab> <C-d>
nnoremap <S-Tab> <<

" Damn boii 
nnoremap <leader>cd :cd %:h<CR>
