-- {{{
local function map(mode, bind, exec, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options
local M = {}
-- }}}

--[[ 
    MAPPING:
	map takes 4 args:
		The first is the type, whether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
		The Second Arg is the keybind. Just like normal vim way
		The Third is the command to execute
		The Fourth is other extra options

	Example:  (toggles line numbers)
		map("n", "<C-n>", ":set rnu!<CR>", opt)
--]]

-- {{{ misc bindings
vim.g.mapleader = '\\' -- Map leader key to space
map('n', '<C-n>', ':set rnu!<CR>', opt) -- toggle relative line numbers
map('', '<C-_>', ':CommentToggle<CR>', opt) -- toggle comment on current line or selection
map('', '<A-t>', ':NvimTreeToggle<CR>', opt)--":lua require('config.plug.nvimtree').toggle_tree()<CR>", opt) -- toggle nvimtree
map('n', '<leader>nf', ':Neoformat<CR>', { noremap = true }) -- format current buffer with neoformat
map('n', '<leader>~', ':Dashboard<CR>', opt) -- map show dashboard

-- clipboard mappings
map('n', '<leader>ya', ':%y+<CR>', opt) -- Copy content of entire buffer to system clipboard
map('n', '<leader>yl', '"+yy', opt) -- yank current line into system clipboard

-- write buffer changes
map('n', '<C-s>', ":w<CR>", opt)
-- }}}

-- {{{ COC
map('', '<C-space>', 'coc#refresh()', opt)
-- }}}

-- {{{ gitsigns mappings
M.gitsigns_mappings = {
	noremap = true,
	['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
	['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },

	['n <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
	['v <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
	['n <leader>gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
	['n <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
	['v <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
	['n <leader>gR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
	['n <leader>gp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
	['n <leader>gb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
	['n <leader>gS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
	['n <leader>gU'] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',

	-- Text objects
	['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
	['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
}
-- }}}

-- {{{ buffer management
map('n', '<leader>bh', ':bf<CR>', { noremap = true })
map('n', '<leader>bk', ':bn<CR>', { noremap = true })
map('n', '<leader>bj', ':bp<CR>', { noremap = true })
map('n', '<leader>bl', ':bl<CR>', { noremap = true })
map('n', '<leader>bd', ':bd<CR>', { noremap = true })
-- }}}

-- {{{ window navigation
map('n', '<C-w>j', ':wincmd h<CR>', opt)
-- map('n', '<leader>j', ':wincmd j<CR>', opt)
-- map('n', '<leader>k', ':wincmd k<CR>', opt)
map('n', '<C-w>k', ':wincmd l<CR>', opt)

-- barbar keybinds
map('n', '<A-,>', ':BufferPrevious<CR>', opt)
map('n', '<A-.>', ':BufferNext<CR>', opt)
map('n', '<A-c>', ':BufferClose<CR>', opt)
-- }}}

-- {{{ terminal commands
-- map('n', '<leader>\\', ':sp | terminal<CR>i', opt)
map('t', '<esc>', '<C-\\><C-n>', opt)
-- }}}

-- {{{ telescope pullup
map('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
map('n', '<leader>fF', ':Telescope file_browser<CR>', { noremap = true })
map('n', '<leader>fw', ':Telescope live_grep<CR>', { noremap = true })
map('n', '<leader>fg', ':Telescope git_commits<CR>', { noremap = true })
map('n', '<leader>fG', ':Telescope git_branches<CR>', { noremap = true })
-- }}}

-- hop.nvim
map('n', '<leader>aH', ':HopWord<CR>', opt)
map('n', '<leader>ah', ':HopLine<CR>', opt)

-- returns any externally-required keymaps for usage
return M

-- # vim foldmethod=marker
