return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
	config = function()
		local highlight = {
                "rosewater",
                "flaming",
                "pink",
                "mauve",
                "red",
                "maroon",
                "peach",



}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                 vim.api.nvim_set_hl(0, "rosewater", { fg = "#f5e0dc" })
	         vim.api.nvim_set_hl(0, "flaming", { fg = "#efd2b3"})
                 vim.api.nvim_set_hl(0, "pink", { fg = "#d8cbff"})
                 vim.api.nvim_set_hl(0, "mauve",{ fg = "#cda5fc"})
                 vim.api.nvim_set_hl(0, "red", { fg = "#ff9bcd"})
                 vim.api.nvim_set_hl(0, "maroon", { fg = "#eba0ac"})
                 vim.api.nvim_set_hl(0, "peach", { fg = "#ff7aa8"})
end)

require("ibl").setup { indent = { highlight = highlight } }

	end 
}
