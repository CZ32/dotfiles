-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copy the path of the current file to the system clipboard.
-- The relative path is relative to the current working directory.
local function copy_path(fmt, label)
  return function()
    local path = vim.fn.expand("%:" .. fmt)
    if path == "" then
      vim.notify("No file name for this buffer", vim.log.levels.WARN)
      return
    end
    vim.fn.setreg("+", path)
    vim.notify("Copied " .. label .. " path: " .. path)
  end
end

vim.keymap.set("n", "<leader>fy", copy_path(".", "relative"), { desc = "Copy relative file path" })
vim.keymap.set("n", "<leader>fY", copy_path("p", "absolute"), { desc = "Copy absolute file path" })
