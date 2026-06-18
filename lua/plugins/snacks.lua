return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	dependencies = { "amansingh-afk/milli.nvim" },
	opts = function()
		local splash = require("milli").load({ splash = "frames" })
		return {
			dashboard = {
				enabled = true,
				preset = {
					header = table.concat(splash.frames[1], "\n"),
				},
				sections = {
					{ section = "header", padding = 2 },
					{
						text = {
							{ " ", hl = "SnacksDashboardIcon" },
							{ "f    ", hl = "SnacksDashboardDesc" },
							{ " ", hl = "SnacksDashboardIcon" },
							{ "e    ", hl = "SnacksDashboardDesc" },
							{ "󰒲  ", hl = "SnacksDashboardIcon" },
							{ "l    ", hl = "SnacksDashboardDesc" },
							{ " ", hl = "SnacksDashboardIcon" },
							{ "q    ", hl = "SnacksDashboardDesc" },
						},
						align = "center",
					},
					{ key = "f", action = ":Telescope find_files", hidden = true },
					{ key = "e", action = ":Yazi", hidden = true },
					{ key = "l", action = ":Lazy", hidden = true },
					{ key = "q", action = ":qa", hidden = true },
				},
			},
		}
	end,
	config = function(_, opts)
		require("snacks").setup(opts)
		require("milli").snacks({ splash = "frames", loop = true })
	end,
}
