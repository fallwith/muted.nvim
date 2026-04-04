-- colors/muted.lua
-- Neovim discovers this file when the user runs :colorscheme muted
-- require("muted").load()

-- ----------------------------------------------------------------------

-- colors/muted.lua
-- Neovim discovers this file when the user runs :colorscheme muted
if vim.g.muted_variant == nil then
	vim.g.muted_variant = "earth"
end
require("muted").load()
