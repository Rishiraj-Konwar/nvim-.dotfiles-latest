return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter", -- Only load the plugin when you actually start typing
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"chrisgrieser/cmp-nerdfont",
		"onsails/lspkind.nvim",
	},
	opts = function()
		vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
		local cmp = require("cmp")
		return {
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nerdfont" },
				{ name = "path" },
			}, {
				{ name = "buffer" },
			}),

			formatting = {
				format = require("lspkind").cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},

			mapping = cmp.mapping.preset.insert({
				["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
			}),

			window = {
				completion = {
					max_height = 10,
					border = "rounded",
					scrollbar = false,
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
				},
				documentation = {
					max_height = 10,
					max_width = 15,
					border = "rounded",
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
		}
	end,
}
