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
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "NONE" })

		vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E05454" })
		vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#F48F68" })

		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE", fg = "#8DC07C" })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE", fg = "#F48F68" })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE", fg = "#E05454" })

		vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE", fg = "#E05454" })
		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE", fg = "#FFE5BF" })
		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE", fg = "#6FBEB2" })
		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE", fg = "#618764" })
		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#E05454" })

		-- statusline
		vim.api.nvim_set_hl(0, "StModeNormal", { fg = "#2d353b", bg = "#83c092", bold = true })
		vim.api.nvim_set_hl(0, "StModeInsert", { fg = "#2d353b", bg = "#F7F1DE", bold = true })
		vim.api.nvim_set_hl(0, "StModeVisual", { fg = "#2d353b", bg = "#d699b6", bold = true })
		vim.api.nvim_set_hl(0, "StModeOther", { fg = "#2d353b", bg = "#e67e80", bold = true })
		vim.api.nvim_set_hl(0, "StGitBranch", { fg = "#d3c6aa", bg = "NONE" })
		vim.api.nvim_set_hl(0, "StGitAdd", { fg = "#a7c080", bg = "NONE" })
		vim.api.nvim_set_hl(0, "StGitChange", { fg = "#dbbc7f", bg = "NONE" })
		vim.api.nvim_set_hl(0, "StGitDelete", { fg = "#e67e80", bg = "NONE" })
		vim.api.nvim_set_hl(0, "FileModifiedIcon", { fg = "#8DC07C", bg = "NONE" })
		vim.api.nvim_set_hl(0, "ErrorHl", { fg = "#e67e80", bg = "NONE" })
		vim.api.nvim_set_hl(0, "WarningHl", { fg = "#dbbc7f", bg = "NONE" })
		vim.api.nvim_set_hl(0, "HintsHl", { fg = "#A5E9DD", bg = "NONE" })
		vim.api.nvim_set_hl(0, "InfoHl", { fg = "#B0BA99", bg = "NONE" })
		vim.api.nvim_set_hl(0, "RecordingHl", { fg = "#e67e80", bg = "NONE" })
		vim.api.nvim_set_hl(0, "LazyCheckHl", { fg = "#F7F1DE", bg = "NONE" })
		vim.api.nvim_set_hl(0, "StBase", { bg = "NONE" }) -- Transparent background
	end,
})
