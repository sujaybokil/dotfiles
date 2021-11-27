nnoremap <leader>e :NvimTreeToggle<CR>

let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1 
let g:nvim_tree_highlight_opened_files = 1

lua << EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  auto_close          = true,
  hijack_cursor       = false,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = false,
    auto_open = false,
  }
  }
EOF
