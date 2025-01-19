--return {
--	'everblush/nvim',
--	config = function()
--		require("everblush").setup({			
--		})
--		vim.cmd('colorscheme everblush')
--	end,
--}

return {
	'catppuccin/nvim',
	config = function()
	require("catppuccin").setup({
		flavour="mocha",
		integrations = {
				--cmp = true,
			},

			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.flamingo },
					TabLineSel = { bg = colors.pink },
					CmpBorder = { fg = colors.surface2 },
					Pmenu = { bg = colors.none },
				}
			end
		})
		vim.cmd('colorscheme catppuccin')
	end,
}
