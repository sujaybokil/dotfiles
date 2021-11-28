-- Plugin related configs
require("config.lualine")
require("config.completion")

-- Basic setups
require('nvim-autopairs').setup{}
require('colorizer').setup()
require('nvim_comment').setup()
require('zen-mode').setup()
require('nvim-treesitter.configs').setup { highlight = { enable = true }}

