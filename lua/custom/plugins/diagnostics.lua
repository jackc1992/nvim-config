return {
	{
		"nvim-lspconfig",
		lazy = false,
		keys = {
			{
				"]w",
				function()
					vim.diagnostic.jump({ count = 1, severity = "WARN", float = true })
				end,
				desc = "Go to next [W]arning",
			},
			{
				"[w",
				function()
					vim.diagnostic.jump({ count = -1, severity = "WARN", float = true })
				end,
				desc = "Go to previous [Warning]",
			},
			{
				"]e",
				function()
					vim.diagnostic.jump({ count = 1, severity = vim.diagnostic.severity.ERROR, float = true })
				end,
				desc = "Go to next [E]rror",
			},
			{
				"[e",
				function()
					vim.diagnostic.jump({ count = -1, severity = vim.diagnostic.severity.ERROR, float = true })
				end,
				desc = "Go to previous [E]rror",
			},
		},
	},
}
