-- lua/muted/init.lua
-- Public API for muted.nvim.

local M = {}

--- Apply the muted colourscheme.
--- Called automatically by colors/muted.lua; can also be called manually.
function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name   = "muted"

	local palette    = require("muted.palette")
	local highlights = require("muted.highlights").get(palette)

	for group, attrs in pairs(highlights) do
		-- Normalise: convert our keys to nvim_set_hl-compatible spec.
		-- We support: fg, bg, sp, bold, italic, underline, undercurl,
		--             strikethrough, reverse, nocombine, link
		vim.api.nvim_set_hl(0, group, attrs)
	end
end

return M
