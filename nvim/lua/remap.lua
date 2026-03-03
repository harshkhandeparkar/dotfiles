vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Tab in insert mode goes to the current intent level
vim.keymap.set('i', '<Tab>', '<C-f>')

-- LSP keybinds
-- SEE telescope.lua for telescope diagnostics keybind
vim.keymap.set('n', 'grn', ":IncRename ", { desc = 'LSP rename' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- Ctrl + Shift + I format
vim.keymap.set("n", "<C-S-i>", vim.lsp.buf.format, { desc = "LSP format" })

-- Terminal
vim.keymap.set('n', '<C-`>', function() vim.cmd("12split | terminal") end, { desc = 'Open a terminal in a split screen' })
vim.keymap.set('n', '<C-t>', function() vim.cmd("tabnew | terminal") end, { desc = 'Open a terminal in a new tab' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Show netrw file explorer
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

-- Move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Scroll half page sets cursor at the center of the buffer
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Capital Y copy whole line
vim.keymap.set("n", "Y", "yy")

-- Copy/paste from system clipboard using leader
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "<leader>y", '"+y')

-- Delete to void register by default with d
-- Use x to cut
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set("v", "d", '"_d')

-- Use <leader>dd to not copy to void register
vim.keymap.set("n", "<leader>dd", 'dd')

