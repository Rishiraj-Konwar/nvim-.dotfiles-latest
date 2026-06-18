return {
	"kcmnd/miasma.nvim-transparent",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.miasma_transparent = 1
		vim.cmd("colorscheme miasma")

		vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#8DC07C" })
		vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = "#8DC07C" })
	end,
}
