-- lua/muted/palette.lua
-- Routes to the correct palette variant.
-- local M = {}
--
-- function M.get(variant)
--     variant = variant or "default"
--     local ok, pal = pcall(require, "muted.palettes." .. variant)
--     if not ok then
--         vim.notify(
--             "muted.nvim: unknown variant '" .. variant .. "', falling back to default",
--             vim.log.levels.WARN
--         )
--         pal = require("muted.palettes.default")
--     end
--     return pal
-- end
--
-- return M
-- -----------------------------------------------------
-- lua/muted/palette.lua
-- Routes to the correct palette variant.
local M = {}

function M.get(variant)
	variant = variant or "earth"
	local ok, pal = pcall(require, "muted.palettes." .. variant)
	if not ok then
		vim.notify(
			"muted.nvim: unknown variant '" .. variant .. "', falling back to earth",
			vim.log.levels.WARN
		)
		pal = require("muted.palettes.earth")
	end
	return pal
end

return M
