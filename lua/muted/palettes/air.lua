-- lua/muted/palettes/air.lua
-- Monochromatic light-and-grey variant of muted.nvim.
-- Near-white background, cool greys as the entire syntax palette.
-- Hierarchy is expressed entirely through luminance and decoration —
-- zero hue variation. The most minimal of the four variants.
-- return {
-- 	-- Backgrounds — light, warm-white surfaces with gentle steps
-- 	bg = "#f0eeeb",
-- 	bg_float = "#f0eeeb",
-- 	bg_conceal = "#e8e6e2",
-- 	bg_nontext = "#e0deda",
-- 	bg_linenr = "#eceae6",
-- 	bg_popup = "#e0deda",
-- 	bg_popup_sb = "#e8e6e2",
-- 	bg_status = "#d8d6d2",
-- 	bg_tab = "#ebebea",
-- 	bg_tab_sel = "#c8c6c2",
-- 	bg_visual = "#d0cecc",
-- 	bg_search = "#b8b6b2",
-- 	bg_winsep = "#c0bebb",
-- 	bg_qf = "#e0deda",
-- 	-- Diff backgrounds — very subtle tints, same semantic meaning
-- 	bg_diff_add = "#dde8da",
-- 	bg_diff_chg = "#dcdae8",
-- 	bg_diff_del = "#e8d8d8",
-- 	bg_diff_txt = "#e0dbd0",
-- 	-- Foregrounds — dark greys on light, full luminance stack
-- 	-- Tier 1 (signal):   #1a1a1a — near-black, maximum presence
-- 	-- Tier 2 (structure): #484848 — dark grey, clearly present
-- 	-- Tier 3 (recede):   #888888 — mid grey, peripheral
-- 	-- Comment:           #a0a09a — light grey, clearly subordinate
-- 	fg = "#1a1a1a",
-- 	fg_bright = "#000000",
-- 	fg_muted = "#484848",
-- 	fg_comment = "#909088",
-- 	fg_linenr = "#606060",
-- 	fg_linenr2 = "#a0a09a",
-- 	fg_nontext = "#e0deda",
-- 	fg_winsep = "#a0a09a",
-- 	fg_special = "#909088",
-- 	-- Syntax — pure luminance hierarchy, no hue
-- 	-- The same 3-tier model expressed in greyscale:
-- 	--   Tier 1 (types, functions): bright/dark — #2a2a2a, #383838
-- 	--   Tier 2 (keywords):         mid          — #505050
-- 	--   Tier 3 (strings, specials): receding    — #707070, #787878
-- 	yellow = "#2a2a2a", -- Type       — near-black, strong Tier 1 signal
-- 	gold = "#505050", -- Operator   — mid-dark, clearly Tier 2
-- 	olive = "#707070", -- String     — mid-grey, recedes to Tier 3
-- 	sage = "#686866", -- Directory  — warm-tinted grey
-- 	purple = "#383838", -- Function   — dark grey, Tier 1 callable
-- 	steel = "#787876", -- Identifier — light-mid grey, Tier 3 anchor
-- 	tan = "#686866", -- Question
-- 	sand = "#808080", -- TabLine
-- 	error_red = "#b03030", -- Error      — darkened for light bg legibility
-- 	-- Popup
-- 	popup_fg = "#606060",
-- 	popup_sel = "#282828",
-- 	-- Substitute
-- 	sub_fg = "#f0eeeb",
-- 	sub_bg = "#484848",
-- }

-- -------------------------------------------------------------------------------------


-- lua/muted/palettes/air.lua
-- Monochromatic dark variant of muted.nvim.
-- Same dark background family as earth/fire/water.
-- Entire syntax palette is greyscale — hierarchy expressed
-- purely through luminance and decoration, zero hue.
return {
	-- Backgrounds — same dark stack as other variants
	bg            = "#202020",
	bg_float      = "#202020",
	bg_conceal    = "#262626",
	bg_nontext    = "#303030",
	bg_linenr     = "#222222",
	bg_popup      = "#303030",
	bg_popup_sb   = "#262626",
	bg_status     = "#2a2a2a",
	bg_tab        = "#212121",
	bg_tab_sel    = "#404040",
	bg_visual     = "#383838",
	bg_search     = "#484848",
	bg_winsep     = "#111111",
	bg_qf         = "#303030",
	-- Diff backgrounds — neutral tints, no hue
	bg_diff_add   = "#252a25",
	bg_diff_chg   = "#252528",
	bg_diff_del   = "#2e2525",
	bg_diff_txt   = "#2a2820",
	-- Foregrounds — full greyscale luminance stack
	-- This is where all hierarchy lives in air.
	-- Tier 1 (signal):    #e8e8e8 — bright off-white, types and functions
	-- Tier 2 (structure): #a0a0a0 — mid grey, keywords
	-- Tier 3 (recede):    #686868 — dark grey, strings, specials
	-- Comment:            #4a4a4a — barely above background, peripheral
	fg            = "#e8e8e8",
	fg_bright     = "#f5f5f5",
	fg_muted      = "#b0b0b0",
	fg_comment    = "#4a4a4a",
	fg_linenr     = "#707070",
	fg_linenr2    = "#484848",
	fg_winsep     = "#383838",
	fg_nontext    = "#303030",
	fg_special    = "#585858",
	-- Syntax — pure luminance, zero hue
	-- Tier 1: types and functions get the brightest non-fg tones
	-- Tier 2: keywords sit clearly below Tier 1
	-- Tier 3: strings, specials, identifiers recede toward comment level
	yellow        = "#d8d8d8",  -- Type       — bright grey, strong Tier 1
	gold          = "#909090",  -- Operator   — mid grey, Tier 2 structural
	olive         = "#686868",  -- String     — dark grey, Tier 3 receding
	sage          = "#787878",  -- Directory  — slightly above strings
	purple        = "#c0c0c0",  -- Function   — bright-mid grey, Tier 1 callable
	steel         = "#606060",  -- Identifier — low grey, Tier 3 anchor
	tan           = "#707070",  -- Question
	sand          = "#686868",  -- TabLine
	error_red     = "#c34143",  -- Error      — only hue in the palette
	-- Popup
	popup_fg      = "#787878",
	popup_sel     = "#c8c8c8",
	-- Substitute
	sub_fg        = "#202020",
	sub_bg        = "#c0c0c0",
}
