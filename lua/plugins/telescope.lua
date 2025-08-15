return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
local builtin = require("telescope.builtin")

-- Keymaps for the files in the file 
vim.keymap.set('n', '<C-f>', builtin.find_files)

-- Keymap for live grep
vim.keymap.set('n', '<leader>f', builtin.live_grep)

end
    }
