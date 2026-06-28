return {
	"al3rez/darktooth.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("darktooth").setup({
			transparent = true,
		}) -- optional, see opts below
		vim.cmd.colorscheme("darktooth")
	end,
}
