-- Basic NVIM keymaps
vim.keymap.set('n', '<C-]>', ':Explore<CR>;')
vim.keymap.set('n', '<C-s>', ':w!<CR>')
vim.keymap.set('n', '<C-q>', ':q!<CR>')

-- Neotree shortcut
vim.keymap.set('n', '<leader>l',  ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal top<CR>')

-- Keymap for the split pane
vim.keymap.set('n', '<C-v>', ':vsplit<CR>')
vim.keymap.set('n', '<C-h>', ':split<CR>')

-- Terminal keymap
vim.keymap.set('n', '<F5>', ':ToggleTerm <CR>')

-- nvim Navbuddy
vim.keymap.set('n', '<F4>', ':Navbuddy <CR>')
vim.keymap.set('n', '<F9>', ':Flote <CR>')

-- Neotree shortcut
vim.keymap.set('n', '<leader>l',  ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal top<CR>')

-- Keymap for the split pane
vim.keymap.set('n', '<C-v>', ':vsplit<CR>')
vim.keymap.set('n', '<C-h>', ':split<CR>')

-- Terminal keymap
vim.keymap.set('n', '<F5>', ':ToggleTerm <CR>')

-- nvim Navbuddy
vim.keymap.set('n', '<F4>', ':Navbuddy <CR>')

-- Note MD file
vim.keymap.set('n', '<F9>', ':Flote <CR>')

-- Keymap list
vim.keymap.set('n', '<F6>', ':FloatermNew nvim ~/Desktop/Notes/keymap.md <CR>')
