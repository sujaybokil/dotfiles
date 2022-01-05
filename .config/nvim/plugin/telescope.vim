" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>ft <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>lua require 'telescope'.extensions.file_browser.file_browser()<cr>

lua << EOF
require('telescope').setup({
    pickers = {
        find_files = {
                hidden = true
            },
        file_browser = {
                hidden = true,
                mappings = {
                    i = {
                      ["<C-o>"] = function(prompt_bufnr)
                        local selection = require("telescope.actions.state").get_selected_entry()
                        local dir = vim.fn.fnamemodify(selection.path, ":p:h")
                        require("telescope.actions").close(prompt_bufnr)
                        -- Depending on what you want put `cd`, `lcd`, `tcd`
                        vim.cmd(string.format("silent lcd %s", dir))
                        vim.cmd("NvimTreeToggle")
                      end
                      }
                }
            }
        }
})
require("telescope").load_extension "file_browser"
EOF

