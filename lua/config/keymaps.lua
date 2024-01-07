local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Noice History
keymap.set("n", "<leader>n", "<cmd>NoiceTelescope<CR>", { desc = "Noice History" })

-- Normal
keymap.set({ "i", "v" }, "jk", "<ESC>", opts)      -- Normal mode
keymap.set({ "i", "v" }, "kj", "<ESC>", opts)      -- Normal mode
keymap.set('n', "o", "a", opts)                    -- Insert right Char mode
keymap.set('n', "O", "A", opts)                    -- Insert right Line mode
keymap.set('x', "<leader>i", [[:normal! I]], opts) -- Multiline edit in V-block mode
vim.api.nvim_set_keymap('i', '<ESC>', '<Nop>', opts)
vim.api.nvim_set_keymap('v', '<ESC>', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'A', '<Nop>', opts)
vim.api.nvim_set_keymap('x', '[[:normal! I]]', '<Nop>', opts)

-- Selecting
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- Select all
keymap.set("n", "<C-f>", "viw", opts)      -- Select a word
keymap.set("n", "<C-y>", "yaw", opts)      -- Select and copy a word
keymap.set("n", "<C-d>", "daw", opts)      -- Select and cut a word
keymap.set("n", "<C-c>", "viwc", opts)     -- Select and edit a word
vim.api.nvim_set_keymap('n', 'viwc', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'daw', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'yaw', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'viw', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'gg<S-v>G', '<Nop>', opts)

-- Interactive search and replace
keymap.set('n', '<leader>Sr', [[:%s/\<C-R><C-W>\>//gc<Left><Left><Left>]], { desc = "Write the word" })

keymap.set("n", "df", "dw", opts) -- Delete a single word
keymap.set("n", "dr", "D", opts)  -- Delete a word forward
vim.api.nvim_set_keymap('n', 'vb_d', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'dw', '<Nop>', opts)
vim.api.nvim_set_keymap('n', 'D', '<Nop>', opts)

-- Indentation
keymap.set("n", "+", "<<", opts) -- Left indentation
keymap.set("n", "-", ">>", opts) -- Right indentation
vim.api.nvim_set_keymap('n', '>>', '<Nop>', opts)
vim.api.nvim_set_keymap('n', '<<', '<Nop>', opts)

-- Undo and Redo
keymap.set("n", "r", "<C-r>", opts) -- Redo
keymap.set("n", "u", "u", opts)     -- Undo
vim.api.nvim_set_keymap('n', '<C-r>', '<Nop>', opts)


-- Set keybinds for ToggleTerm
keymap.set("n", "<leader>th", "<Cmd>ToggleTerm size=10 direction=horizontal<Cr>", { desc = "Horizontal Terminal" })
keymap.set("n", "<leader>tv", "<Cmd>ToggleTerm size=45 direction=vertical<Cr>", { desc = "Vertical Terminal" })
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float size=45<cr>", { desc = "Floating Terminal" })


-- Set keybinds for Live-Sever
keymap.set("n", "<leader>Ls", "<cmd>LiveServerStart<CR>", { desc = "Start Live-Sever" })
keymap.set("n", "<leader>Lc", "<cmd>LiveServerStop<CR>", { desc = "Stop Live-Sever" })


-- Set keybinds for Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find your keymaps" })


-- Set keybinds for LSP
keymap.set("n", "<leader>gL", "<cmd>Telescope lsp_references<CR>", { desc = "Show LSP references" })
keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })
keymap.set("n", "<leader>gy", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show LSP type definitions" })
keymap.set({ "n", "v" }, "<leader>ga", vim.lsp.buf.code_action, { desc = "See available code actions" })
keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Smart rename" })
keymap.set("n", "<leader>gb", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
keymap.set("n", "<leader>gl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
keymap.set("n", "<leader>gm", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<leader>gK", vim.lsp.buf.hover, { desc = "Show documentation for what is under cursor" })
keymap.set("n", "<leader>gR", ":LspRestart<CR>", { desc = "Restart LSP" })



local mapkey = require("util.keymapper").mapkey

-- Show Full File-Path
mapkey("<leader>p", "echo expand('%:p')", "n", { desc = "Show Current Path" }) -- Show Full File Path

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n", { desc = "Next buffer" })                          -- Next buffer
mapkey("<leader>bp", "bprevious", "n", { desc = "Previous buffer" })                  -- Prev buffer
mapkey("<leader>bb", "e #", "n", { desc = "Switch buffer" })                          -- Switch to Other Buffer
mapkey("<leader>bd", "bdelete", "n", { desc = "Delete buffer" })                      -- Deleting current buffer
mapkey("<leader>bq", "BufferLinePickClose", "n", { desc = "Pick and delete buffer" }) -- Close buffer by picking

-- Directory Navigation
mapkey("<leader>j", ":Neotree<CR>", "n", { desc = "Open Side Bar" })
mapkey("<leader>k", ":Neotree close<CR>", "n", { desc = "close Side Bar" })

-- Navigation
mapkey("<C-h>", "wincmd h", "t")          -- Navigate Left
mapkey("<C-j>", "wincmd j", "t")          -- Navigate Down
mapkey("<C-k>", "wincmd k", "t")          -- Navigate Up
mapkey("<C-l>", "wincmd l", "t")          -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n")  -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n")  -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n")    -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n", { desc = "Split Vertically" })        -- Split Vertically
mapkey("<leader>sh", "split", "n", { desc = "Split Horizontally" })       -- Split Horizontally
mapkey("<leader>se", "<C-w>=", "n", { desc = "Split window equal" })      -- make split windows equal width & height
mapkey("<leader>sx", "close<CR>", "n", { desc = "Close current window" }) -- close current split window
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


local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })

-- Debugger
-- api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<Cr>", { noremap = true })
-- api.nvim_set_keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<Cr>", { noremap = true })
