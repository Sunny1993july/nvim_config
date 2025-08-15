vim.g.mapleader= " "

vim.keymap.set('n', '<C-]>', ':Explore<CR>;')
vim.keymap.set('n', '<C-s>', ':w!<CR>')
vim.keymap.set('n', '<C-q>', ':q!<CR>')

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup("plugins")

-- Neotree shortcut
vim.keymap.set('n', '<leader>l',  ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal top<CR>')


-- Keymap for the split pane
vim.keymap.set('n', '<C-v>', ':vsplit<CR>')
vim.keymap.set('n', '<C-h>', ':split<CR>')

-- Terminal keymap
vim.keymap.set('n', '<F4>', ':ToggleTerm <CR>')

