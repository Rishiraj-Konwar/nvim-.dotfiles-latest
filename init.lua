require("core.options")
require("core.keymaps")
require("core.colorscheme")
require("core.lazy")
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
