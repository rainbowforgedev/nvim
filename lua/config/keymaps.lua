-- Keymaps are automatically loaded on the VeryLazy event

-- Add any additional keymaps here
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
--
--
--make escape reenter insert mode in normal mode.
vim.keymap.set("n", "<Esc><Esc>", "i", { noremap = true })

--Make i up and such.
vim.keymap.set({ "n", "v", "o" }, "i", "k", { noremap = true }) -- i = up
vim.keymap.set({ "n", "v", "o" }, "j", "h", { noremap = true }) -- j = left
vim.keymap.set({ "n", "v", "o" }, "k", "j", { noremap = true }) -- k = down
vim.keymap.set({ "n", "v", "o" }, "l", "l", { noremap = true }) -- l = right

-- Set up new Alt+i and Alt+k

vim.keymap.del({ "n", "v" }, "<A-j>")
vim.keymap.del({ "n", "v" }, "<A-k>")

vim.keymap.set({ "n", "v" }, "<A-k>", ":m+1<CR>==", { noremap = true, silent = true }) -- Alt+k = move down
vim.keymap.set({ "n", "v" }, "<A-i>", ":m-2<CR>==", { noremap = true, silent = true }) -- Alt+i = move up

vim.keymap.set({ "i" }, "<A-i>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true }) -- Alt+k = move down
vim.keymap.set({ "i" }, "<A-k>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true }) -- Alt+i = move up
-- make h insert.
-- vim.keymap.set({ "n", "o" }, "h", "i", { noremap = true })
vim.keymap.set("n", "H", "I", { noremap = true })

--Remap q for word backwards.
vim.keymap.set({ "n", "v", "o" }, "q", "b", { noremap = true })
vim.keymap.set({ "n", "v" }, "Q", "B", { noremap = true })
vim.keymap.set("n", "b", "q", { noremap = true })

--Replace Control R for redo.
vim.keymap.set("n", "U", "<C-r>", { noremap = true })
vim.keymap.set("n", "<A-u>", "U", { noremap = true })
--Replace shift E for WORD forwards and Q for back and do line navigation instead.
vim.keymap.set({ "n", "v", "o" }, "E", "$", { noremap = true }) -- E = end of line
vim.keymap.set({ "n", "v", "o" }, "Q", "^", { noremap = true }) -- Q = start of line
-- WORD navigation with Alt
vim.keymap.set({ "n", "v", "o" }, "<A-e>", "W", { noremap = true })
vim.keymap.set({ "n", "v", "o" }, "<A-q>", "B", { noremap = true })

--terminal mode exit keymap
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })

-- Control Delete delets next word.

vim.keymap.set("i", "<C-Del>", "<C-o>dw", { noremap = true })

vim.keymap.set("n", "<C-Del>", "dw", { noremap = true })
-- Control backspace delete word pleasssssseeeeee
--

vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-H>", "db", { noremap = true })

--neogit keymap
vim.keymap.set("n", "<leader>gng", "<cmd>Neogit<cr>", { desc = "Open Neogit UI" })

-- WhichKey registration
local wk = require("which-key")
wk.add({
  { "i", desc = "Up", mode = { "n", "v", "o" } },
  { "j", desc = "Left", mode = { "n", "v", "o" } },
  { "k", desc = "Down", mode = { "n", "v", "o" } },
  { "l", desc = "Right", mode = { "n", "v", "o" } },
  { "h", desc = "Insert", mode = "n" },
  { "H", desc = "Insert at line start", mode = "n" },
  { "q", desc = "Word backward", mode = { "n", "v", "o" } },
  { "b", desc = "Record macro", mode = "n" },
  { "E", desc = "End of line", mode = { "n", "v", "o" } },
  { "Q", desc = "Start of line", mode = { "n", "v", "o" } },
  { "<A-e>", desc = "WORD forward", mode = { "n", "v", "o" } },
  { "<A-q>", desc = "WORD backward", mode = { "n", "v", "o" } },
  { "<A-u>", desc = "Redo", mode = "n" },
})
