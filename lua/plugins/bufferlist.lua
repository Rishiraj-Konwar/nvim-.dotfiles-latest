return {
	"EL-MASTOR/bufferlist.nvim",
	lazy = true,
	keys = { { "<Leader>b", ":BufferList<CR>", desc = "Open bufferlist" } },
	dependencies = "nvim-tree/nvim-web-devicons",
	cmd = "BufferList",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		keymap = {
			visual_save = "y",
			visual_close = "x",
			save_buf = "y",
			multi_save_buf = "Y",
			close_buf_prefix = "x",
			multi_close_buf = "X",
		},
		bufs_keymaps = {
			-- Overwrite the default "y" (save) behavior with a bug-free version
			{
				"y",
				function(args)
					local buf = args.buffers[args.line_number]

					-- Only run the save logic if the buffer is ACTUALLY modified
					if vim.bo[buf].modified then
						-- Save the file
						vim.api.nvim_buf_call(buf, function()
							vim.cmd("w")
						end)

						-- Safely clear the modified icon without glitching the text
						vim.bo[args.bl_buf].modifiable = true
						vim.api.nvim_buf_set_text(
							args.bl_buf,
							args.line_number - 1,
							0,
							args.line_number - 1,
							4,
							{ " " }
						)
						vim.bo[args.bl_buf].modifiable = false
					end
				end,
				{ desc = "Safe save buffer (fixes weird filename bug)" },
			},
		},
	},
}
