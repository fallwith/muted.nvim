-- lua/muted/palettes/fire.lua
-- Fiery/red variant of muted.nvim.
-- Reds, deep crimsons, and ember tones — same 3-tier hierarchy,
-- pushed firmly into the red spectrum rather than rust/amber.
-- return {
-- 	-- Backgrounds — very subtle red-dark tint
-- 	bg = "#201818",
-- 	bg_float = "#201818",
-- 	bg_conceal = "#281e1e",
-- 	bg_nontext = "#302020",
-- 	bg_linenr = "#231818",
-- 	bg_popup = "#302020",
-- 	bg_popup_sb = "#281e1e",
-- 	bg_status = "#342020",
-- 	bg_tab = "#221818",
-- 	bg_tab_sel = "#4a2828",
-- 	bg_visual = "#4a2424",
-- 	bg_search = "#5a2e2e",
-- 	bg_winsep = "#110e0e",
-- 	bg_qf = "#302020",
-- 	-- Diff backgrounds
-- 	bg_diff_add = "#222e22",
-- 	bg_diff_chg = "#28202e",
-- 	bg_diff_del = "#3e1e1e",
-- 	bg_diff_txt = "#3a2420",
-- 	-- Foregrounds — warm off-white, identical luminance stack to earth
-- 	fg = "#E8E2DA",
-- 	fg_bright = "#F5ECD8",
-- 	fg_muted = "#cccccc",
-- 	fg_comment = "#525c4d",
-- 	fg_linenr = "#d6d2c8",
-- 	fg_linenr2 = "#888888",
-- 	fg_winsep = "#888888",
-- 	fg_nontext = "#302020",
-- 	fg_special = "#6a5555",
-- 	-- Syntax — red spectrum
-- 	-- Tier 1: types (rose-red), functions (deep crimson-pink)
-- 	-- Tier 2: keywords (dark red), structural
-- 	-- Tier 3: strings (muted brick), specials, identifiers
-- 	yellow = "#D47878", -- Type       — clear rose-red, Tier 1 signal
-- 	gold = "#A83030", -- Operator   — deep crimson, Tier 2 structural
-- 	olive = "#8B5858", -- String     — muted brick-red, Tier 3 receding
-- 	sage = "#A06868", -- Directory  — mid rose
-- 	purple = "#C85858", -- Function   — bright-mid red, Tier 1 callable
-- 	steel = "#7a6868", -- Identifier — cool anchor, Tier 3
-- 	tan = "#8B6060", -- Question
-- 	sand = "#907070", -- TabLine
-- 	error_red = "#D4C97A", -- Error      — unchanged, semantic
-- 	-- Popup
-- 	popup_fg = "#8a7070",
-- 	popup_sel = "#C8A8A8",
-- 	-- Substitute
-- 	sub_fg = "#1A1010",
-- 	sub_bg = "#A06868",
--
--     -- Test Color
-- 	test_color = "#777777",
--
-- }

return {
	-- Backgrounds (hue ~350°, sat 5–7%, lightness matches originals)
	bg = "#201C1D", -- was #202020, +faint crimson undertone
	bg_float = "#201C1D",
	bg_conceal = "#262123",
	bg_nontext = "#302A2C",
	bg_linenr = "#221E1F",
	bg_popup = "#302A2C",
	bg_popup_sb = "#262123",
	bg_status = "#342F31",
	bg_tab = "#211D1E",
	bg_tab_sel = "#3D3035", -- slight warmth for selected context
	bg_visual = "#3A2F32", -- muted burgundy wash, replaces neutral #454545
	bg_search = "#4E3C40", -- replaces #5F5958
	bg_winsep = "#120F10",
	bg_qf = "#302A2C",

	-- Diff backgrounds (preserve semantic green/blue/red distinction)
	bg_diff_add = "#253228", -- keep green-ish, just slightly warmer
	bg_diff_chg = "#242434", -- keep blue-purple
	bg_diff_del = "#3E2228", -- deepened toward crimson
	bg_diff_txt = "#352822", -- warm ochre-brown

	-- Foregrounds (near-neutral, 2–3% rose saturation max)
	fg = "#EAE2E3", -- was #E8E2DA, barely rosier
	fg_bright = "#FFF2F0", -- was #FFFEDB, warm white with rose tint
	fg_muted = "#CCCACC",
	fg_comment = "#524D4E", -- was #525c4d, same darkness, hue-shifted
	fg_linenr = "#D4CDD0",
	fg_linenr2 = "#888088",
	fg_winsep = "#888088",
	fg_nontext = "#302A2C",
	fg_special = "#6B6264",

	-- -- Syntax accents
	-- -- Primary crimson accent (was amber gold): keywords, operators
	-- gold = "#C26070", -- HSL ~350°, sat 40%, light 58% — your "crimson sprinkle"
	-- -- Warm rose (was yellow): types, constants, numbers
	-- yellow = "#C99090", -- HSL ~0°, sat 35%, light 67% — dusty rose, clearly distinct
	-- -- Strings: keep cool-green contrast, it makes warm tones pop
	-- olive = "#8FA870", -- slight hue shift, same role
	-- -- Special/directory: keep teal-sage, contrast anchor
	-- sage = "#9AB8A8", -- slightly more muted than original
	-- -- Functions: shift toward cooler violet to separate from crimson keys
	-- purple = "#9E8AB8", -- was AA9AAC, cooler/more violet
	-- -- Identifiers/preprocessor: keep blue-grey
	-- steel = "#8A9698", -- essentially unchanged
	-- tan = "#A08890", -- was 9b8d7f, slight rose nudge
	-- sand = "#A09098", -- was A09998
	-- -- Error: orange-red, distinct from keyword crimson so errors read as errors
	-- error_red = "#C84040", -- slightly more orange than crimson gold
	--
	-- -- Popup
	-- popup_fg = "#928285", -- slight rose vs neutral #918988
	-- popup_sel = "#C0B8BA",
	--
	-- -- Substitute
	-- sub_fg = "#1A1A1A",
	-- sub_bg = "#C1C88D", -- keep sage-green here; crimson-on-crimson substitute would be unreadable
	--
	-- test_color = "#777077",
	------------------------------------------------------------------------------------------------

	-- Syntax accents — revised

	-- Keywords, operators: actual crimson, not pink
	gold = "#B83A4A", -- HSL 351°, 52%, 47% — deep true crimson

	-- Types, constants: warm terracotta, clearly in the red family but distinct
	yellow = "#C4634A", -- HSL 14°, 50%, 52% — brick/terracotta, not yellow/rose

	-- Strings: desaturated olive, keeps contrast without going green-dominant
	olive = "#909870", -- unchanged role, toned down slightly

	-- Special/directory/hints: keep a neutral cool to anchor the warm tones
	sage = "#7A9E92", -- more muted, less green-forward

	-- Functions: warm sand-beige, NOT purple — keeps it in the warm family
	purple = "#B89878", -- HSL 30°, 30%, 58% — warm tan, reads distinct from crimson

	-- Identifiers/preprocessor: cool blue-grey anchor
	steel = "#8A9698", -- unchanged

	-- Error: brighter, more orange-red so it clearly differs from keyword crimson
	error_red = "#D44040", -- HSL 0°, 62%, 54% — clearly alarm-red, not crimson

	tan = "#A08480",
	sand = "#A09098",

	popup_fg = "#928285",
	popup_sel = "#C0B8BA",

	sub_fg = "#1A1A1A",
	sub_bg = "#B83A4A", -- crimson substitute highlight, fg stays dark so readable
}
