return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_background = "soft"
		vim.g.gruvbox_material_transparent_background = 2
		vim.g.gruvbox_material_float_style = "blend"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
