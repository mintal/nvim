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

-- exit terminal mode with escape
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {noremap = true, silent = true});

-- adjust font size
vim.g.neovide_scale_factor = 1.0
vim.opt.guifont = "Consolas:h" .. (10 * vim.g.neovide_scale_factor)

function AdjustFontSize(delta)
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
	vim.opt.guifont = "Consolas:h" .. (10 * vim.g.neovide_scale_factor)
end

vim.keymap.set("n", "<C-=>", function() AdjustFontSize(0.1) end);
vim.keymap.set("n", "<C-->", function() AdjustFontSize(-0.1) end);
