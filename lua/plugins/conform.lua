return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true }, -- for React / JSX
				typescriptreact = { "prettierd", "prettier", stop_after_first = true }, -- for React / TSX

				-- C and C++
				c = { "clang-format" },
				cpp = { "clang-format" },

				-- Go
				go = { "goimports", "gofmt" },
				java = { "google-java-format" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
