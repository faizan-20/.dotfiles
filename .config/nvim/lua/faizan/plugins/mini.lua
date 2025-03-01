return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- require("mini.animate").setup()
		-- require("mini.comment").setup()
		require("mini.pairs").setup()
		require("mini.statusline").setup()
	end,
}
