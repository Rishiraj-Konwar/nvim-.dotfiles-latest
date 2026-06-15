return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox_dark",
				component_separators = { left = " ", right = " " },
				section_separators = { left = "", right = "" },
				icons_enabled = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return "  " .. str
						end,
					},
				},
				lualine_c = {},
				lualine_x = {
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
						color = { fg = "#cccccc" }, -- Sets a specific hex color for the text
					},
					"filetype",
				},
			},
		})
	end,
}
