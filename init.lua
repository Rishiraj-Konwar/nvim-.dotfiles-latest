require("core.options")
require("core.keymaps")

--lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = { import = "plugins" },
	checker = {
		enabled = true,
		notfify = false,
	},
	change_detection = {
		notify = false,
	},
})

require("core.statusline")

vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("jdtls")
vim.lsp.enable("clangd")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "javascript", "typescript", "rust", "go", "c", "cpp", "java" },
	callback = function()
		vim.treesitter.start()
	end,
})
