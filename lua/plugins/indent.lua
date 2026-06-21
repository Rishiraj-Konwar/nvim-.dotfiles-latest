return {
	"lukas-reineke/indent-blankline.nvim",
	event = "BufReadPost",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		require("ibl").setup()
	end,
}
