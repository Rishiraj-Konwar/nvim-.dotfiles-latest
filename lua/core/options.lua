local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.fillchars = { eob = " " }
opt.cmdheight = 0
opt.updatetime = 250

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.swapfile = false
opt.backup = false

opt.clipboard:append("unnamedplus")

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#555555" })
		vim.api.nvim_set_hl(0, "NormalNC", { link = "Normal" })

		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TelescopePriviewBorder", { bg = "NONE" })

		vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E05454" })
		vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#F48F68" })
		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE", fg = "#8DC07C" })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE", fg = "#F48F68" })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE", fg = "#E05454" })

		vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE", fg = "#E05454" })
		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = "#FFE5BF" })
		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE", fg = "#6FBEB2" })
		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE", fg = "#618764" })
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
		},
	},
	underline = true,
})
