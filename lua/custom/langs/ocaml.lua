return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "ocaml" })
			end
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ocamllsp = {
					filetypes = {
						"ocaml",
						"ocaml.menhir",
						"ocaml.interface",
						"ocaml.ocamllex",
						"reason",
						"dune",
					},
				},
			},
		},
	},
}
