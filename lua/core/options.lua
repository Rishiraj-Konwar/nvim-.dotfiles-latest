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

		--	vim.api.nvim_set_hl(0, "NvimTreeNormalFloat", { link = "Normal" })
		--vim.api.nvim_set_hl(0, "NvimTreeNormal", { link = "Normal" })
		--vim.api.nvim_set_hl(0, "NvimTreeSignColumn", { link = "Normal" })
		--vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { link = "Normal" })
		--vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#3c3836" })
		vim.api.nvim_set_hl(0, "NormalNC", { link = "Normal" })
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
	underline = true,
})
