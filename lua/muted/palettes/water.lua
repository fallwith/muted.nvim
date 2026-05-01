-- lua/muted/palettes/water.lua
-- Cool, deep-water variant of muted.nvim.
-- Blues, slate-greens, and cool neutrals — same 3-tier hierarchy,
-- shifted entirely into the cool/blue spectrum.
return {
	-- Backgrounds — deep cool-dark, slight blue-slate tint
	bg = "#181c20",
	bg_float = "#181c20",
	bg_conceal = "#1e2328",
	bg_nontext = "#242a30",
	bg_linenr = "#1a1f24",
	bg_popup = "#242a30",
	bg_popup_sb = "#1e2328",
	bg_status = "#222830",
	bg_tab = "#191e23",
	bg_tab_sel = "#2e3d4f",
	bg_visual = "#2a3a4a",
	bg_search = "#2e4258",
	bg_winsep = "#0e1114",
	bg_qf = "#242a30",
	-- Diff backgrounds
	bg_diff_add = "#1e2f2a",
	bg_diff_chg = "#1e2438",
	bg_diff_del = "#2e2028",
	bg_diff_txt = "#243040",
	-- Foregrounds — cool off-white, same luminance stack as earth/fire
	fg = "#dde4ea",
	fg_bright = "#eef3f8",
	fg_muted = "#c0c8d0",
	fg_comment = "#4a5a62",
	fg_linenr = "#c8d0d8",
	fg_linenr2 = "#888888",
	fg_winsep = "#888888",
	fg_nontext = "#242a30",
	fg_special = "#5a6870",
	-- Syntax — cool blue/slate/teal spectrum
	-- Tier 1: types (steel-blue), functions (slate-teal)
	-- Tier 2: keywords (mid-blue), structural
	-- Tier 3: strings (desaturated cyan-grey), specials, identifiers
	yellow = "#7aaac8", -- Type       — clear steel-blue, reads as data
	gold = "#5880a8", -- Operator   — deeper slate-blue, structural
	olive = "#6a8f90", -- String     — muted teal-grey, recedes correctly
	sage = "#7a9fa0", -- Directory  — slightly brighter teal
	purple = "#7888b8", -- Function   — blue-violet, callable family
	steel = "#6a7888", -- Identifier — cool grey-blue anchor, Tier 3
	tan = "#607888", -- Question   — slate
	sand = "#788898", -- TabLine
	error_red = "#c34143", -- Error      — unchanged, semantic meaning fixed
	-- Popup
	popup_fg = "#7a8898",
	popup_sel = "#a8b8c8",
	-- Substitute
	sub_fg = "#0e1418",
	sub_bg = "#7a9fa0",

	-- Test Color
	test_color = "#555555",
}
