vim.g.mapleader = " "
local keymaps = vim.keymap
keymaps.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--telescope
keymaps.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
keymaps.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
keymaps.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
keymaps.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })

vim.keymap.set({ "n", "v" }, "<leader>F", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)
keymaps.set("n", "gd", vim.lsp.buf.definition)
keymaps.set("n", "<leader>E", vim.diagnostic.open_float)

keymaps.set("n", "<leader>m", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
keymaps.set("n", "<leader>n", "<cmd>bnext<CR>", { desc = "Next buffer" })
