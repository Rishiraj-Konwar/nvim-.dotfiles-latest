vim.api.nvim_set_hl(0, "StModeNormal", { fg = "#2d353b", bg = "#83c092", bold = true })
vim.api.nvim_set_hl(0, "StModeInsert", { fg = "#2d353b", bg = "#7fbbb3", bold = true })
vim.api.nvim_set_hl(0, "StModeVisual", { fg = "#2d353b", bg = "#d699b6", bold = true })
vim.api.nvim_set_hl(0, "StModeOther", { fg = "#2d353b", bg = "#e67e80", bold = true })
vim.api.nvim_set_hl(0, "StGitBranch", { fg = "#d3c6aa", bg = "NONE" })
vim.api.nvim_set_hl(0, "StGitAdd", { fg = "#a7c080", bg = "NONE" })
vim.api.nvim_set_hl(0, "StGitChange", { fg = "#dbbc7f", bg = "NONE" })
vim.api.nvim_set_hl(0, "StGitDelete", { fg = "#e67e80", bg = "NONE" })
vim.api.nvim_set_hl(0, "StBase", { bg = "NONE" }) -- Transparent background

local function get_mode()
	local mode_map = {
		n = { " n ", "StModeNormal" },
		i = { " i ", "StModeInsert" },
		v = { " v ", "StModeVisual" },
		V = { " v-line", "StModeVisual" },
		["\22"] = { " v-block ", "StModeVisual" },
		c = { " c ", "StModeOther" },
		r = { " r ", "StModeOther" },
		R = { " R ", "StModeOther" },
		t = { " t ", "StModeOther" },
	}
	local mode = vim.api.nvim_get_mode().mode
	local m = mode_map[mode] or { " " .. mode .. " ", "StModeOther" }
	return "%#" .. m[2] .. "#" .. m[1] .. "%#StBase#"
end

local function get_git()
	local dict = vim.b.gitsigns_status_dict
	if not dict then
		return ""
	end

	local branch = dict.head and ("%#StGitBranch#  " .. dict.head .. " ") or ""
	local added = dict.added and dict.added > 0 and ("%#StGitAdd#+" .. dict.added .. " ") or ""
	local changed = dict.changed and dict.changed > 0 and ("%#StGitChange#~" .. dict.changed .. " ") or ""
	local removed = dict.removed and dict.removed > 0 and ("%#StGitDelete#-" .. dict.removed .. " ") or ""

	local diff = added .. changed .. removed
	if branch == "" and diff == "" then
		return ""
	end
	return diff .. branch .. ""
end

local function get_icon()
	local ok, devicons = pcall(require, "nvim-web-devicons")
	if not ok then
		return ""
	end
	local icon, icon_hl = devicons.get_icon(vim.fn.expand("%:t"), vim.fn.expand("%:e"))
	if not icon then
		return ""
	end
	return "%#" .. icon_hl .. "# " .. icon .. " %#StBase#"
end

function _G.CustomStatusLine()
	local is_active = vim.g.statusline_winid == vim.fn.win_getid()
	local is_modified = vim.api.nvim_get_option_value("modified", { buf = 0 })
	local modified_icon = is_modified and "[+]" or ""
	local filename = " %t"
	local align_right = "%="
	if not is_active then
		return "%#StBase#" .. filename .. align_right
	end
	return "%#StBase#" .. filename .. " " .. modified_icon .. align_right .. get_git() .. get_mode() .. get_icon()
end

vim.opt.statusline = "%!v:lua.CustomStatusLine()"

vim.cmd("redrawstatus") -- no need if not using any floating window from dashboard

vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave", "CmdlineLeave" }, {
	callback = function()
		vim.schedule(function()
			vim.cmd("redrawstatus")
		end)
	end,
})
