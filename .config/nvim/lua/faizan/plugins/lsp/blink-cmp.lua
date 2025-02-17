return {
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",

		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- See the full "keymap" documentation for information on defining your own keymap.
			keymap = { preset = "enter" },
			completion = {
				menu = {
					border = "single",
					auto_show = function(ctx)
						return ctx.mode ~= "cmdline"
					end,
				},
				documentation = { auto_show = true, auto_show_delay_ms = 250, window = { border = "single" } },
				-- ghost_text = { enabled = true },
			},
			signature = { window = { border = "single" } },
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "markdown" },
				providers = { -- THIS IS ONLY FOR MARKDOWN
					markdown = {
						name = "RenderMarkdown",
						module = "render-markdown.integ.blink",
						fallbacks = { "lsp" },
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
