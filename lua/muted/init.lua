-- -- lua/muted/init.lua
-- -- Public API for muted.nvim.
--
-- local M = {}
--
-- --- Apply the muted colourscheme.
-- --- Called automatically by colors/muted.lua; can also be called manually.
-- function M.load()
--     if vim.g.colors_name then
--         vim.cmd("hi clear")
--     end
--     if vim.fn.exists("syntax_on") then
--         vim.cmd("syntax reset")
--     end
--
--     vim.o.termguicolors = true
--     vim.g.colors_name   = "muted"
--
--     local palette       = require("muted.palette")
--     local highlights    = require("muted.highlights").get(palette)
--
--     for group, attrs in pairs(highlights) do
--         -- Normalise: convert our keys to nvim_set_hl-compatible spec.
--         -- We support: fg, bg, sp, bold, italic, underline, undercurl,
--         --             strikethrough, reverse, nocombine, link
--         vim.api.nvim_set_hl(0, group, attrs)
--     end
-- end
--
-- return M
-- ------------------------------------------------------------------------------------------------------------------------------

-- lua/muted/init.lua
-- Public API for muted.nvim.
--
-- Variants (flavours):
--   "earth"  — warm neutrals, earthy greens, dusty purples (default)
--   "fire"   — rust, ember, and red-toned accents
--   "water"  — coming soon
--   "air"    — coming soon

-- local M = {}
--
-- --- Default options.
-- M.defaults = {
-- 	variant = "earth",
-- }
--
-- --- Active options (merged at setup time or load time).
-- M.options = {}
--
-- --- Configure muted.nvim without loading it.
-- --- Call this before vim.cmd("colorscheme muted") if you want to set options.
-- ---
-- --- @param opts table|nil  Optional overrides, e.g. { variant = "fire" }
-- function M.setup(opts)
-- 	M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
-- end
--
-- --- Resolve the variant to use.
-- --- Priority: M.options.variant → vim.g.muted_variant → "earth"
-- local function resolve_variant()
-- 	if M.options.variant and M.options.variant ~= M.defaults.variant then
-- 		return M.options.variant
-- 	end
-- 	if vim.g.muted_variant and vim.g.muted_variant ~= "" then
-- 		return vim.g.muted_variant
-- 	end
-- 	if M.options.variant then
-- 		return M.options.variant
-- 	end
-- 	return "earth"
-- end
--
-- --- Apply the muted colourscheme.
-- --- Called automatically by colors/muted.lua; can also be called manually.
-- function M.load()
-- 	if vim.g.colors_name then
-- 		vim.cmd("hi clear")
-- 	end
-- 	if vim.fn.exists("syntax_on") == 1 then
-- 		vim.cmd("syntax reset")
-- 	end
--
-- 	vim.o.termguicolors = true
-- 	vim.g.colors_name = "muted"
--
-- 	local variant = resolve_variant()
-- 	local palette = require("muted.palette").get(variant)
-- 	local highlights = require("muted.highlights").get(palette)
--
-- 	for group, attrs in pairs(highlights) do
-- 		vim.api.nvim_set_hl(0, group, attrs)
-- 	end
-- end
--
-- return M

-- ------------------------------------------------------------------------


-- lua/muted/init.lua
-- Public API for muted.nvim.
--
-- Variants (flavours):
--   "earth"  — warm neutrals, earthy greens, dusty purples (default)
--   "fire"   — rust, ember, and red-toned accents
--   "water"  — coming soon
--   "air"    — coming soon

local M = {}

M.defaults = {
	variant = "earth",
}

M.options = {}

--- Configure muted.nvim without loading it.
--- Call this before vim.cmd("colorscheme muted") if you want to set options.
--- @param opts table|nil  e.g. { variant = "fire" }
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

--- Resolve the variant to use.
--- Priority: setup() call → vim.g.muted_variant → "earth"
local function resolve_variant()
	-- If setup() was called, it always wins
	if M.options.variant then
		return M.options.variant
	end
	-- Global variable fallback (set before :colorscheme muted)
	if vim.g.muted_variant and vim.g.muted_variant ~= "" then
		return vim.g.muted_variant
	end
	return "earth"
end

--- Apply the muted colourscheme.
--- Called automatically by colors/muted.lua; can also be called manually.
function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "muted"

	local variant    = resolve_variant()
	local palette    = require("muted.palette").get(variant)
	local highlights = require("muted.highlights").get(palette)

	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end

return M
