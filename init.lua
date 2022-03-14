-- Load All packer plugins
require('plug')

-- load keybindings and editor options
require('keymap')
require('options')
require('autocmds')

-- load theme loading library
local scheme = require('lib.scheme')

-- Load Themes (loads everforest theme by default)
-- load editor color theme
scheme.load_scheme('papercolor')

-- load statusline theme
scheme.load_lualine_scheme('custom')

-- if you don't  want to specify the theme for each component,
-- you can use the following function
-- scheme.load_shared_scheme('gruvbox-material')

-- make background transparent
vim.cmd('hi Normal guibg=none ctermbg=none')
vim.cmd('hi Normal guibg=none ctermbg=none')
vim.cmd('hi LineNr guibg=none ctermbg=none')
vim.cmd('hi Folded guibg=none ctermbg=none')
vim.cmd('hi NonText guibg=none ctermbg=none')
vim.cmd('hi SpecialKey guibg=none ctermbg=none')
vim.cmd('hi VertSplit guibg=none ctermbg=none')
vim.cmd('hi SignColumn guibg=none ctermbg=none')
vim.cmd('hi EndOfBuffer guibg=none ctermbg=none')

-- set the statusline and tabline style
-- you can change the characters used
-- for seperators in the statusline and tabline
-- for instance, we can use bubble characters
-- scheme.load_global_style({'', ''}, {'', ''})

-- load configurations
-- config.plug loads plugin configurations
-- config.module loads user contrib files (work in progress)
require('config.plug')
require('config.modules')

-- # vim foldmethod=marker
