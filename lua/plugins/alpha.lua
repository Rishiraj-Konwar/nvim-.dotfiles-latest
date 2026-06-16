return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-mini/mini.icons", "amansingh-afk/milli.nvim" },
	config = function()
		local splash = require("milli").load({ splash = "frames" })

		local config = {
			layout = {
				-- Adds some padding from the top of the screen
				{ type = "padding", val = 8 },
				-- The header section containing our first frame
				{ type = "text", val = splash.frames[1], opts = { position = "center" } },
			},
			opts = {},
		}

		require("alpha").setup(config)
		require("milli").alpha({ splash = "frames", loop = true })
	end,
}
