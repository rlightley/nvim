-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Better buffer navigation
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Better paste (don't yank replaced text)
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Git hunk navigation and actions (using gitsigns)
vim.keymap.set("n", "]h", function()
  require("gitsigns").next_hunk()
end, { desc = "Next Git Hunk" })
vim.keymap.set("n", "[h", function()
  require("gitsigns").prev_hunk()
end, { desc = "Prev Git Hunk" })
vim.keymap.set("n", "<leader>gs", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>gr", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset Hunk" })
vim.keymap.set("n", "<leader>gp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>gb", function()
  require("gitsigns").blame_line({ full = true })
end, { desc = "Git Blame Line" })
