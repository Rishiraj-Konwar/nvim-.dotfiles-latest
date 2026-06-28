return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			float = {
				transparent = true,
			},
			transparent_background = true,
		})
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
}
