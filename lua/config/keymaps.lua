-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- windows
map("n", "<leader>ws", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>wv", "<C-W>v", { desc = "Split window right" })
map("n", "<leader>wm", function()
  vim.cmd("vertical resize")
  vim.cmd.resize()
end, { desc = "Maximize window" })
map("n", "<leader>w=", "<C-W>=", { desc = "Make windows equal" })

-- files
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })

-- suspend
map("n", "<leader>z", "<cmd>suspend<cr>", { desc = "Suspend" })
