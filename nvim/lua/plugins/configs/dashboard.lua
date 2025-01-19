return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			-- config
			shortcut_type = 'number',
			config = {
				header = {""},
				shortcut = {
					{
						icon = ' ',
						icon_hl = '@variable',
						desc = 'Files',
						group = 'Label',
						action = 'Telescope oldfiles',
						key = 'f',
					},
				},
				footer = {},
				packages = { enable = false },
				project = {enable = false},
				mru = {enable = true, limit = 10, label=''},

			}
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
