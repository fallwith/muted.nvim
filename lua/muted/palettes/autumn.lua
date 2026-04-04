-- lua/muted/palettes/autumn.lua
-- Fiery/red-toned variant of muted.nvim.
-- Same hierarchy principles, shifted into the rust/ember spectrum.
return {
	-- Backgrounds — slightly warmer tint than default
	bg = "#201818",
	bg_float = "#201818",
	bg_conceal = "#271f1f",
	bg_nontext = "#302424",
	bg_linenr = "#231a1a",
	bg_popup = "#302424",
	bg_popup_sb = "#271f1f",
	bg_status = "#352628",
	bg_tab = "#221818",
	bg_tab_sel = "#4a3030",
	bg_visual = "#4a3232",
	bg_search = "#5a3f3a",
	bg_winsep = "#110e0e",
	bg_qf = "#302424",
	-- Diff backgrounds — same semantic meaning, warmer tint
	bg_diff_add = "#253028",
	bg_diff_chg = "#2e2430",
	bg_diff_del = "#3f2020",
	bg_diff_txt = "#40322a",
	-- Foregrounds — same as default, warmth comes from accents
	fg = "#E8E2DA",
	fg_bright = "#F5ECD8",
	fg_muted = "#cccccc",
	fg_comment = "#525c4d",
	fg_linenr = "#d6d2c8",
	fg_linenr2 = "#888888",
	fg_winsep = "#888888",
	fg_nontext = "#302424",
	fg_special = "#6a5f5f",
	-- Syntax — shifted into rust/ember/red spectrum
	yellow = "#D4A96A", -- Type       — warm amber instead of yellow-green
	gold = "#C8733A", -- Operator   — deep rust-orange
	olive = "#A07860", -- String     — muted terracotta
	sage = "#B89070", -- Directory  — warm sand
	purple = "#B87878", -- Function   — dusty rose-red
	steel = "#8B8090", -- Identifier — kept cool as contrast anchor
	tan = "#9b7060", -- Question   — deeper terracotta tan
	sand = "#A08880", -- TabLine
	error_red = "#C34143", -- Error      — unchanged, semantic
	-- Popup
	popup_fg = "#918080",
	popup_sel = "#BFAEAA",
	-- Substitute
	sub_fg = "#1A1414",
	sub_bg = "#B89070",
}
