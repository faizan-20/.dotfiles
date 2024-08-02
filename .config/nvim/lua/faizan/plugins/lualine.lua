return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},
			-- tabline = {
			--     lualine_a = { 'buffers' },
			--     lualine_b = {},
			--     lualine_c = {},
			--     lualine_x = {},
			--     lualine_y = {},
			--     lualine_z = { 'tabs' }
			-- }
		})
	end,
}
