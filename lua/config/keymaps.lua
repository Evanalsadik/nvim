local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Selecting
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- Select all
vim.api.nvim_set_keymap("n", "gg<S-v>G", "<Nop>", opts)
keymap.set("n", "ds", "vb_d", opts) -- Delete a word backward
vim.api.nvim_set_keymap("n", "vb_d", "<Nop>", opts)

-- Redo
keymap.set("n", "r", "<C-r>", opts) -- Redo
vim.api.nvim_set_keymap("n", "<C-r>", "<Nop>", opts)

-- Noice History
keymap.set("n", "<leader>n", "<cmd>NoiceTelescope<CR>", { desc = "Noice History" })

-- Noice History
-- keymap.set("t", "jk", [[<C-\><C-n>]], opts)
-- keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

-- Normal
-- keymap.set({ "i", "v" }, "jk", "<ESC>", opts)      -- Normal mode
-- keymap.set({ "i", "v" }, "kj", "<ESC>", opts)      -- Normal mode
-- keymap.set('n', "o", "a", opts)                    -- Insert right Char mode
-- keymap.set('n', "O", "A", opts)                    -- Insert right Line mode
-- keymap.set('x', "<leader>i", [[:normal! I]], opts) -- Multiline edit in V-block mode
-- vim.api.nvim_set_keymap('i', '<ESC>', '<Nop>', opts)
-- vim.api.nvim_set_keymap('v', '<ESC>', '<Nop>', opts)
-- vim.api.nvim_set_keymap('n', 'A', '<Nop>', opts)
-- vim.api.nvim_set_keymap('x', '[[:normal! I]]', '<Nop>', opts)

-- keymap.set("n", "<C-f>", "viw", opts)      -- Select a word
-- keymap.set("n", "<C-y>", "yaw", opts)      -- Select and copy a word
-- keymap.set("n", "<C-d>", "daw", opts)      -- Select and cut a word
-- keymap.set("n", "<C-c>", "viwc", opts)     -- Select and edit a word

-- keymap.set("n", "dr", "dw", opts) -- Delete a single word
-- keymap.set("n", "df", "D", opts)  -- Delete a word forward
-- vim.api.nvim_set_keymap('n', 'dw', '<Nop>', opts)
-- vim.api.nvim_set_keymap('n', 'D', '<Nop>', opts)

-- Indentation
-- keymap.set("n", "<leader>_", "<<", { desc = "Left indentation" }) -- Left indentation
-- keymap.set("n", "<leader>+", ">>", { desc = "Right indentation" }) -- Right indentation
-- vim.api.nvim_set_keymap('n', '>>', '<Nop>', opts)
-- vim.api.nvim_set_keymap('n', '<<', '<Nop>', opts)

local mapkey = require("util.keymapper").mapkey

-- Show Full File-Path
-- mapkey("<leader>p", "echo expand('%:p')", "n", { desc = "Show Current Path" }) -- Show Full File Path

-- Directory Navigation
-- mapkey("<leader>j", ":Neotree<CR>", "n", { desc = "Open Side Bar" })
mapkey("<C-c>", ":Neotree close<CR>", "n", { desc = "close Side Bar" })
mapkey("<C-b>", ":Neotree buffers<CR>", "n", { desc = "Buffers" })
mapkey("<C-g>", ":Neotree git_status<CR>", "n", { desc = "Git Status" })
mapkey("<C-f>", ":Neotree filesystem<CR>", "n", { desc = "File System" })

-- Navigation
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sM", "<c-w>T", "n", { desc = "Maximize Window" }) -- Split Vertically
mapkey("<leader>sm", "<c-w>^", "n", { desc = "Minimize Window" }) -- Split Horizontally
mapkey("<leader>se", "<C-w>=", "n", { desc = "Split window equal" }) -- make split windows equal width & height
-- * Window Navigation
mapkey("<C-h>", "<C-w>h", "n")
mapkey("<C-j>", "<C-w>j", "n")
mapkey("<C-k>", "<C-w>k", "n")
mapkey("<C-l>", "<C-w>l", "n")
-- * Window Resizing
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- local api = vim.api

-- Debugger
-- api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<Cr>", { noremap = true })
