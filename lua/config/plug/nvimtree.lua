local g = vim.g

g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' }
-- g.nvim_tree_quit_on_open = 0
-- g.nvim_tree_indent_markers = 1
-- g.nvim_tree_git_hl = 1
-- g.nvim_tree_highlight_opened_files = 1
-- g.nvim_tree_root_folder_modifier = ':~'
-- g.nvim_tree_add_trailing = 1
-- g.nvim_tree_group_empty = 1
-- g.nvim_tree_disable_window_picker = 0
-- g.nvim_tree_icon_padding = ' '
-- g.nvim_tree_symlink_arrow = ' >> '
-- g.nvim_tree_show_icons = {
-- 	git = 1,
-- 	folders = 1,
-- 	files = 1,
-- }

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  actions = {
	open_file = {
		resize_window = true,
		quit_on_open = true,
		window_picker = {
			enable = false
		}
	}
  },
  renderer = {
    highlight_git = true,
	indent_markers = {
		enable = true
	},
	highlight_opened_files = "icon",
	root_folder_modifier = ":~",
	add_trailing = true,
	group_empty = true,
	icons = {
		padding = " ",
		symlink_arrow = " >> ",
		show = {
		  git = true,
		  folder = true,
		  file = true,
		}
	}
  },
  -- update_to_buf_dir   = {
  --   enable = true,
  --   auto_open = true,
  -- },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    -- auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

