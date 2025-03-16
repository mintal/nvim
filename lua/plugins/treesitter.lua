return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({

		with_sync = true,
		ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "vue", "c_sharp" },
		sync_install = false,
		auto_install = true,
		highlight = {
			enabled = true,
			additional_vim_regex_highlighting = false,
		},
		})
	end
}
