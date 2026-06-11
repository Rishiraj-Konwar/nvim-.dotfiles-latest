return {
	"echasnovski/mini.icons",
	lazy = true,
	opts = {
		-- You can customize specific things here if you want,
		-- but the defaults are incredib
		file = {
			[".env"] = {
				glyph = "", -- The icon
				hl = "MiniIconsAzure", -- The color highlight group
			},
			directory = {
				["node_modules"] = { glyph = "", hl = "MiniIconsRed" },
				[".github"] = { glyph = "", hl = "MiniIconsGrey" },
				["src"] = { glyph = "", hl = "MiniIconsBlue" },
			},
		},
	},
	init = function()
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
