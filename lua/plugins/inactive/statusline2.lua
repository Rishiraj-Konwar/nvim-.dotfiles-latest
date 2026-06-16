return {
	"drgfunk/streamline.nvim",

	-- optional icon provider dependency
	-- either echasnovski/mini.icons or nvim-tree/nvim-web-devicons
	-- mini.icons is preferred if more than one icon provider is loaded
	dependencies = { { "echasnovski/mini.icons", opts = {} } },

	branch = "main",
	opts = {},
	config = function()
		require("streamline").setup({
			sections = {
				left = {
					"mode",
					"git_branch",
				},
				right = {
					"filetype",
				},
			},
			excluded_filetypes = {
				"TelescopePrompt",
			},
		})
		vim.api.nvim_set_hl(0, "StreamlineMode", { fg = "#282C33", bg = "#8DC07C" })
	end,
}
