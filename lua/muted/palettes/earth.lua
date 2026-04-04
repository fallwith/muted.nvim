-- lua/muted/palettes/earth.lua
-- Single source of truth for the muted.nvim colour palette.

return {
	-- Backgrounds
	bg = "#202020",
	bg_float = "#202020",
	bg_conceal = "#262626",
	bg_nontext = "#303030",
	bg_linenr = "#222222",
	bg_popup = "#303030",
	bg_popup_sb = "#262626",
	bg_status = "#34383C",
	bg_tab = "#212121",
	bg_tab_sel = "#40474F",
	bg_visual = "#454545",
	bg_search = "#5F5958",
	bg_winsep = "#111111",
	bg_qf = "#303030",
	-- Diff backgrounds
	bg_diff_add = "#2B3328",
	bg_diff_chg = "#262636",
	bg_diff_del = "#42242B",
	bg_diff_txt = "#49443C",
	-- Foregrounds
	fg = "#E8E2DA",
	fg_bright = "#FFFEDB",
	fg_muted = "#cccccc",
	-- fg_comment    = "#6f7b68",
	fg_comment = "#525c4d",
	fg_linenr = "#d6d2c8",
	fg_linenr2 = "#888888",
	fg_winsep = "#888888",
	fg_nontext = "#303030",
	fg_special = "#676767",
	-- Syntax
	-- yellow        = "#E3D896", -- Type
	yellow = "#D4C97A", -- Type  — slightly darker, purer yellow
	-- gold          = "#DEBF7C", -- Operator
	gold = "#C8944A", -- Operator — shifted amber-orange, clearly warmer
	olive = "#A2A970", -- String
	sage = "#C1C88D", -- Directory, SpecialChar
	purple = "#AA9AAC", -- Function, Structure
	steel = "#8B9698", -- Identifier, PreProc, Todo
	tan = "#9b8d7f", -- Question
	sand = "#A09998", -- TabLine
	error_red = "#C34143", -- Error, DiffDelete
	-- Popup
	popup_fg = "#918988",
	popup_sel = "#BFBBBA",
	-- Substitute
	sub_fg = "#1A1A1A",
	sub_bg = "#C1C88D",
}
