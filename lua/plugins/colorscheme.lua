--return {
--	"sainnhe/gruvbox-material",
--name = "gruvbox-material",
--priority = 1000,
--config = function()
--vim.cmd.colorscheme("gruvbox-material")
--end,
--}
return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			keywordStyle = { italic = false },
			theme = "dragon",
			background = {
				dark = "dragon",
			},
			overrides = function(colors)
				return {
					RainbowDelimiterRed = { fg = "#FFA6A6" },
					RainbowDelimiterOrange = { fg = "#82c0af" },
					Keyword = { fg = "#B29D83" },
					Conditional = { fg = "#B29D83" },
					Type = { fg = "#7e9579", italic = false },
					Pmenu = { bg = "#353535" },
					PmenuSel = { bg = "#4A4A5A", fg = "#ffffff" },
					GitSignsAdd = { bg = "NONE" },
					GitSignsChange = { bg = "NONE" },
					GitSignsDelete = { bg = "NONE" },
					DiagnosticError = { fg = "#FFA6A6" },
					DiagnosticVirtualTextError = { fg = "#FFA6A6" },
					Visual = { bg = "#4A4A5A" },
					["@type.builtin"] = { fg = "#DC9B9B", bold = true },
				}
			end,
		})
		vim.cmd.colorscheme("kanagawa")
	end,
}
