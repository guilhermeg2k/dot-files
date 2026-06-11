-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{
			"<leader>nt",
			function()
				require("neo-tree.command").execute({ reveal = true })
			end,
			desc = "Explorer NeoTree on current file",
		},
	},
	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
			use_libuv_file_watcher = true,
			filtered_items = {
				visible = true,
			},
		},
		window = {
			position = "float",
		},
	},
}
