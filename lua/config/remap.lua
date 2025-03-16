-- default options
vim.opt.relativenumber = true
vim.cmd.colorscheme "catppuccin"
-- explorer section
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", '<Cmd>Neotree toggle<CR>')

-- telescope section
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({search = vim.fn.input("grep > ")})
end)
