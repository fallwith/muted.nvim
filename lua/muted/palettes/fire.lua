-- lua/muted/palettes/fire.lua
-- Fiery/red variant of muted.nvim.
-- Reds, deep crimsons, and ember tones — same 3-tier hierarchy,
-- pushed firmly into the red spectrum rather than rust/amber.
return {
	-- Backgrounds — very subtle red-dark tint
	bg            = "#201818",
	bg_float      = "#201818",
	bg_conceal    = "#281e1e",
	bg_nontext    = "#302020",
	bg_linenr     = "#231818",
	bg_popup      = "#302020",
	bg_popup_sb   = "#281e1e",
	bg_status     = "#342020",
	bg_tab        = "#221818",
	bg_tab_sel    = "#4a2828",
	bg_visual     = "#4a2424",
	bg_search     = "#5a2e2e",
	bg_winsep     = "#110e0e",
	bg_qf         = "#302020",
	-- Diff backgrounds
	bg_diff_add   = "#222e22",
	bg_diff_chg   = "#28202e",
	bg_diff_del   = "#3e1e1e",
	bg_diff_txt   = "#3a2420",
	-- Foregrounds — warm off-white, identical luminance stack to earth
	fg            = "#E8E2DA",
	fg_bright     = "#F5ECD8",
	fg_muted      = "#cccccc",
	fg_comment    = "#525c4d",
	fg_linenr     = "#d6d2c8",
	fg_linenr2    = "#888888",
	fg_winsep     = "#888888",
	fg_nontext    = "#302020",
	fg_special    = "#6a5555",
	-- Syntax — red spectrum
	-- Tier 1: types (rose-red), functions (deep crimson-pink)
	-- Tier 2: keywords (dark red), structural
	-- Tier 3: strings (muted brick), specials, identifiers
	yellow        = "#D47878",  -- Type       — clear rose-red, Tier 1 signal
	gold          = "#A83030",  -- Operator   — deep crimson, Tier 2 structural
	olive         = "#8B5858",  -- String     — muted brick-red, Tier 3 receding
	sage          = "#A06868",  -- Directory  — mid rose
	purple        = "#C85858",  -- Function   — bright-mid red, Tier 1 callable
	steel         = "#7a6868",  -- Identifier — cool anchor, Tier 3
	tan           = "#8B6060",  -- Question
	sand          = "#907070",  -- TabLine
	error_red     = "#D4C97A",  -- Error      — unchanged, semantic
	-- Popup
	popup_fg      = "#8a7070",
	popup_sel     = "#C8A8A8",
	-- Substitute
	sub_fg        = "#1A1010",
	sub_bg        = "#A06868",
}
