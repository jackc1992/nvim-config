return {
	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		lazy = false,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		-- just so I can see the options here
		opts = {
			compile = false,
			undercurl = true,
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false,
			dimInactive = false,
			terminalColors = true,
			theme = "wave", -- Load the kanagawa-wave theme
			background = {
				dark = "wave",
				light = "lotus",
			},
		},
		init = function()
			require("kanagawa").load("wave")
		end,
	},
}
