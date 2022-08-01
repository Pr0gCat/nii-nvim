require('packer').startup({
	function(use)
		-- packer self management
		use('wbthomason/packer.nvim')
		
		-- {{{ COC autocompletion and syntax highlights
		use({'neoclide/coc.nvim', branch = 'release'})
		use({'tjvr/vim-nearley'})
		-- }}}
		-- snippets
		use('sirver/ultisnips')

		-- {{{ utility plugins
		-- these plugins are all realted to editor configs
		use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } })
		use({ 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } })
		use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
		use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
		use('windwp/nvim-autopairs')
		use('terrortylor/nvim-comment')
		use('sbdchd/neoformat')
		use('phaazon/hop.nvim')
		use({ 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } })
		use({'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'})
		use({'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}})
		use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
		use({"akinsho/toggleterm.nvim", tag = 'v2.*'})
		-- }}}

		-- {{{ imporved syntax plugins
		-- these add in a bit more bling and flair to nvim
		use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
		use('glepnir/dashboard-nvim')
		--use({ 'glepnir/dashboard-nvim', disable = false })
		use('norcalli/nvim-colorizer.lua')
		-- }}}

		-- {{{ themes
		-- popular themes incoming
		use('joshdick/onedark.vim')
		use('sickill/vim-monokai')
		use('morhetz/gruvbox')
		use('shaunsingh/nord.nvim')
		use('sainnhe/gruvbox-material')

		-- neesh themes
		use('sainnhe/everforest')
		use('relastle/bluewery.vim')
		use('haishanh/night-owl.vim')
		use('NLKNguyen/papercolor-theme')
		-- }}}
		--
	end,
	-- display packer dialouge in the center in a floating window
	config = {
		display = {
			open_fn = require('packer.util').float,
		},
	},
})

-- # vim foldmethod=marker
