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
opt.winbar = " "
opt.clipboard:append("unnamedplus")

vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
		},
	},
	underline = true,
})
