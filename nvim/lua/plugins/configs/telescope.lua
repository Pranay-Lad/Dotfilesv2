return {
	"nvim-telescope/telescope.nvim",
	
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		telescope.setup({
			vim.keymap.set("n", "<leader>fd", builtin.find_files, {}),
			vim.keymap.set("n", "<leader>ff", builtin.oldfiles, {})
		})
		telescope.load_extension("fzf")
	end,
}


