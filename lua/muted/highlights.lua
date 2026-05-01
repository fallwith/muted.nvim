-- lua/muted/highlights.lua
-- All highlight group definitions for muted.nvim.
-- Returns a flat table: { GroupName = { fg, bg, bold, italic, … } }

local M = {}

function M.get(p)
	-- p = palette
	return {

		-- ── Editor chrome ────────────────────────────────────────────────
		Normal = { fg = p.fg, bg = p.bg },
		NormalNC = { fg = p.fg_muted, bg = p.bg },
		NormalFloat = { fg = p.fg, bg = p.bg_float },
		FloatBorder = { fg = p.fg_special, bg = p.bg_float },
		FloatTitle = { fg = p.fg_bright, bg = p.bg_float, bold = true },

		ColorColumn = { bg = p.bg_nontext },
		Conceal = { fg = p.fg_special, bg = p.bg_conceal },
		CursorLine = { bg = p.bg_nontext },
		CursorLineNr = { fg = p.fg_linenr, bg = p.bg_linenr, bold = true },
		CursorColumn = { bg = p.bg_nontext },
		LineNr = { fg = p.fg_linenr2, bg = p.bg_linenr },
		SignColumn = { bg = p.bg_linenr },

		Folded = { fg = p.fg_comment, bg = p.bg_conceal },
		FoldColumn = { fg = p.fg_linenr2, bg = p.bg_linenr },

		VertSplit = { fg = p.bg_winsep, bg = p.bg_winsep },
		WinSeparator = { fg = p.fg_winsep, bg = p.bg_winsep },

		StatusLine = { fg = p.fg_muted, bg = p.bg_status },
		StatusLineNC = { fg = p.fg_special, bg = p.bg_status },
		StatusLineTerm = { fg = p.fg_muted, bg = p.bg_status },
		StatusLineTermNC = { fg = p.fg_special, bg = p.bg_status },

		TabLine = { fg = p.sand, bg = p.bg_tab },
		TabLineFill = { bg = p.bg_tab },
		TabLineSel = { fg = p.fg_bright, bg = p.bg_tab_sel, bold = true },

		Pmenu = { fg = p.popup_fg, bg = p.bg_popup },
		PmenuSel = { fg = p.popup_sel, bg = p.bg_tab_sel },
		PmenuSbar = { bg = p.bg_popup_sb },
		PmenuThumb = { bg = p.fg_special },
		PmenuKind = { fg = p.steel, bg = p.bg_popup },
		PmenuKindSel = { fg = p.sage, bg = p.bg_tab_sel },
		PmenuExtra = { fg = p.fg_comment, bg = p.bg_popup },
		PmenuExtraSel = { fg = p.fg_muted, bg = p.bg_tab_sel },

		WildMenu = { fg = p.popup_sel, bg = p.bg_tab_sel },

		Visual = { bg = p.bg_visual },
		VisualNOS = { bg = p.bg_visual },

		Search = { fg = p.fg_bright, bg = p.bg_search },
		IncSearch = { fg = p.sub_fg, bg = p.gold, bold = true },
		CurSearch = { fg = p.sub_fg, bg = p.gold, bold = true },
		Substitute = { fg = p.sub_fg, bg = p.sub_bg },

		MatchParen = { fg = p.fg_bright, bg = p.bg_search, bold = true },

		MsgArea = { fg = p.fg_muted, bg = p.bg },
		MsgSeparator = { fg = p.fg_winsep, bg = p.bg_winsep },
		MoreMsg = { fg = p.sage, bold = true },
		Question = { fg = p.tan },
		ErrorMsg = { fg = p.error_red, bold = true },
		WarningMsg = { fg = p.gold },

		SpellBad = { sp = p.error_red, undercurl = true },
		SpellCap = { sp = p.steel, undercurl = true },
		SpellLocal = { sp = p.olive, undercurl = true },
		SpellRare = { sp = p.purple, undercurl = true },

		Directory = { fg = p.sage }, -- Responsible for the snacks.explorer
        NonText = { fg = p.test_color },

		SpecialKey = { fg = p.fg_nontext },
		Whitespace = { fg = p.fg_nontext },
		EndOfBuffer = { fg = p.bg }, -- hide ~ markers

		Title = { fg = p.fg_bright, bold = true },

		QuickFixLine = { fg = p.fg_bright, bg = p.bg_qf, bold = true },
		qfLineNr = { fg = p.fg_linenr2 },
		qfFileName = { fg = p.sage },

		-- ── Syntax — classic groups ──────────────────────────────────────
		Comment = { fg = p.fg_comment, italic = true },

		Constant = { fg = p.yellow },
		String = { fg = p.olive },
		Character = { fg = p.olive },
		Number = { fg = p.yellow },
		Float = { fg = p.yellow },
		Boolean = { fg = p.yellow },

		Identifier = { fg = p.steel },
		Function = { fg = p.purple },

		Statement = { fg = p.gold },
		Conditional = { fg = p.gold },
		Repeat = { fg = p.gold },
		Label = { fg = p.gold },
		Operator = { fg = p.gold },
		Keyword = { fg = p.gold },
		Exception = { fg = p.gold },

		PreProc = { fg = p.steel },
		Include = { fg = p.steel },
		Define = { fg = p.steel },
		Macro = { fg = p.steel },
		PreCondit = { fg = p.steel },

		Type = { fg = p.yellow },
		StorageClass = { fg = p.yellow },
		Structure = { fg = p.yellow },
		Typedef = { fg = p.yellow },

		Special = { fg = p.sage },
		SpecialChar = { fg = p.sage },
		Tag = { fg = p.sage },
		Delimiter = { fg = p.fg_muted },
		SpecialComment = { fg = p.fg_comment, italic = true, bold = true },
		Debug = { fg = p.error_red },

		Underlined = { underline = true },
		Ignore = { fg = p.fg_special },
		Error = { fg = p.error_red, bold = true },
		Todo = { fg = p.steel, bold = true },

		-- ── Treesitter — @capture groups ────────────────────────────────
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { fg = p.fg_comment, italic = true, bold = true },

		["@string"] = { link = "String" },
		["@string.escape"] = { fg = p.sage },
		["@string.special"] = { fg = p.sage },
		["@string.regexp"] = { fg = p.olive, italic = true },

		["@character"] = { link = "Character" },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },
		["@boolean"] = { link = "Boolean" },

		["@variable"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.steel, italic = true },
		["@variable.parameter"] = { fg = p.fg_muted },
		["@variable.member"] = { fg = p.fg_muted },

		["@constant"] = { fg = p.yellow },
		["@constant.builtin"] = { fg = p.yellow, italic = true },
		["@constant.macro"] = { fg = p.steel },

		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = p.purple, italic = true },
		["@function.macro"] = { fg = p.steel },
		["@function.method"] = { fg = p.purple },
		["@function.call"] = { fg = p.purple },
		["@function.method.call"] = { fg = p.purple },

		["@constructor"] = { fg = p.yellow },

		["@keyword"] = { link = "Keyword" },
		["@keyword.function"] = { fg = p.gold },
		["@keyword.operator"] = { fg = p.gold },
		["@keyword.return"] = { fg = p.gold, italic = true },
		["@keyword.import"] = { fg = p.steel },
		["@keyword.conditional"] = { fg = p.gold },
		["@keyword.repeat"] = { fg = p.gold },
		["@keyword.exception"] = { fg = p.gold },
		["@keyword.modifier"] = { fg = p.gold },

		["@operator"] = { link = "Operator" },
		["@punctuation.delimiter"] = { fg = p.fg_muted },
		["@punctuation.bracket"] = { fg = p.fg_muted },
		["@punctuation.special"] = { fg = p.sage },

		["@type"] = { link = "Type" },
		["@type.builtin"] = { fg = p.yellow, italic = true },
		["@type.qualifier"] = { fg = p.gold },
		["@type.definition"] = { fg = p.yellow },

		["@attribute"] = { fg = p.steel },
		["@property"] = { fg = p.fg_muted },

		["@namespace"] = { fg = p.fg_muted },
		["@module"] = { fg = p.fg_muted },
		["@module.builtin"] = { fg = p.steel, italic = true },

		["@label"] = { fg = p.sage },
		["@tag"] = { fg = p.sage },
		["@tag.attribute"] = { fg = p.steel },
		["@tag.delimiter"] = { fg = p.fg_special },

		["@markup.heading"] = { fg = p.fg_bright, bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.bold"] = { bold = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.link"] = { fg = p.sage, underline = true },
		["@markup.link.url"] = { fg = p.steel, underline = true },
		["@markup.raw"] = { fg = p.olive },
		["@markup.list"] = { fg = p.gold },
		["@markup.list.checked"] = { fg = p.sage },
		["@markup.list.unchecked"] = { fg = p.fg_special },
		["@markup.quote"] = { fg = p.fg_comment, italic = true },

		["@diff.plus"] = { fg = p.sage },
		["@diff.minus"] = { fg = p.error_red },
		["@diff.delta"] = { fg = p.gold },

		-- ── LSP semantic tokens ──────────────────────────────────────────
		["@lsp.type.class"] = { fg = p.yellow },
		["@lsp.type.decorator"] = { fg = p.steel },
		["@lsp.type.enum"] = { fg = p.yellow },
		["@lsp.type.enumMember"] = { fg = p.yellow },
		["@lsp.type.function"] = { fg = p.purple },
		["@lsp.type.interface"] = { fg = p.yellow },
		["@lsp.type.macro"] = { fg = p.steel },
		["@lsp.type.method"] = { fg = p.purple },
		["@lsp.type.namespace"] = { fg = p.fg_muted },
		["@lsp.type.parameter"] = { fg = p.fg_muted },
		["@lsp.type.property"] = { fg = p.fg_muted },
		["@lsp.type.struct"] = { fg = p.yellow },
		["@lsp.type.type"] = { fg = p.yellow },
		["@lsp.type.typeParameter"] = { fg = p.yellow, italic = true },
		["@lsp.type.variable"] = { fg = p.fg },
		["@lsp.type.keyword"] = { fg = p.gold },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.string"] = { link = "String" },
		["@lsp.type.number"] = { link = "Number" },
		["@lsp.type.operator"] = { link = "Operator" },
		["@lsp.mod.deprecated"] = { strikethrough = true },
		["@lsp.mod.readonly"] = { italic = true },

		-- ── Diagnostics ──────────────────────────────────────────────────
		DiagnosticError = { fg = p.error_red },
		DiagnosticWarn = { fg = p.gold },
		DiagnosticInfo = { fg = p.steel },
		DiagnosticHint = { fg = p.sage },
		DiagnosticOk = { fg = p.olive },

		DiagnosticUnderlineError = { sp = p.error_red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.gold, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.steel, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.sage, undercurl = true },

		DiagnosticVirtualTextError = { fg = p.error_red, bg = p.bg_diff_del, italic = true },
		DiagnosticVirtualTextWarn = { fg = p.gold, bg = p.bg_diff_txt, italic = true },
		DiagnosticVirtualTextInfo = { fg = p.steel, bg = p.bg_nontext, italic = true },
		DiagnosticVirtualTextHint = { fg = p.sage, bg = p.bg_diff_add, italic = true },

		DiagnosticSignError = { fg = p.error_red, bg = p.bg_linenr },
		DiagnosticSignWarn = { fg = p.gold, bg = p.bg_linenr },
		DiagnosticSignInfo = { fg = p.steel, bg = p.bg_linenr },
		DiagnosticSignHint = { fg = p.sage, bg = p.bg_linenr },

		LspReferenceText = { bg = p.bg_visual },
		LspReferenceRead = { bg = p.bg_visual },
		LspReferenceWrite = { bg = p.bg_visual, underline = true },
		LspInlayHint = { fg = p.fg_comment, bg = p.bg_conceal, italic = true },
		LspCodeLens = { fg = p.fg_comment, italic = true },
		LspSignatureActiveParameter = { fg = p.fg_bright, bg = p.bg_search, bold = true },

		-- ── Diff ─────────────────────────────────────────────────────────
		DiffAdd = { bg = p.bg_diff_add },
		DiffChange = { bg = p.bg_diff_chg },
		DiffDelete = { fg = p.error_red, bg = p.bg_diff_del },
		DiffText = { bg = p.bg_diff_txt },

		-- ── Git signs (gitsigns.nvim) ────────────────────────────────────
		GitSignsAdd = { fg = p.sage, bg = p.bg_linenr },
		GitSignsChange = { fg = p.gold, bg = p.bg_linenr },
		GitSignsDelete = { fg = p.error_red, bg = p.bg_linenr },
		GitSignsAddNr = { fg = p.sage, bg = p.bg_linenr },
		GitSignsChangeNr = { fg = p.gold, bg = p.bg_linenr },
		GitSignsDeleteNr = { fg = p.error_red, bg = p.bg_linenr },
		GitSignsAddLn = { bg = p.bg_diff_add },
		GitSignsChangeLn = { bg = p.bg_diff_chg },
		GitSignsDeleteLn = { bg = p.bg_diff_del },
		GitSignsCurrentLineBlame = { fg = p.fg_comment, italic = true },

		-- ── Telescope ────────────────────────────────────────────────────
		TelescopeNormal = { fg = p.fg_muted, bg = p.bg_float },
		TelescopeBorder = { fg = p.fg_special, bg = p.bg_float },
		TelescopeTitle = { fg = p.fg_bright, bold = true },
		TelescopePromptNormal = { fg = p.fg, bg = p.bg_nontext },
		TelescopePromptBorder = { fg = p.fg_special, bg = p.bg_nontext },
		TelescopePromptTitle = { fg = p.fg_bright, bold = true },
		TelescopePromptPrefix = { fg = p.sage },
		TelescopePromptCounter = { fg = p.fg_comment },
		TelescopeResultsNormal = { fg = p.fg_muted, bg = p.bg_float },
		TelescopeResultsBorder = { fg = p.fg_special, bg = p.bg_float },
		TelescopeResultsTitle = { fg = p.fg_special },
		TelescopeMatching = { fg = p.sage, bold = true },
		TelescopeSelection = { fg = p.fg_bright, bg = p.bg_tab_sel },
		TelescopeSelectionCaret = { fg = p.sage, bg = p.bg_tab_sel },
		TelescopeMultiSelection = { fg = p.gold, bg = p.bg_visual },
		TelescopePreviewNormal = { bg = p.bg_conceal },
		TelescopePreviewBorder = { fg = p.fg_special, bg = p.bg_conceal },
		TelescopePreviewTitle = { fg = p.fg_bright, bold = true },
		TelescopePreviewLine = { bg = p.bg_visual },
		TelescopePreviewMatch = { fg = p.sage, bold = true },

		-- ── nvim-cmp ─────────────────────────────────────────────────────
		CmpItemAbbr = { fg = p.popup_fg },
		CmpItemAbbrMatch = { fg = p.sage, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = p.olive, bold = true },
		CmpItemAbbrDeprecated = { fg = p.fg_special, strikethrough = true },
		CmpItemKind = { fg = p.steel },
		CmpItemMenu = { fg = p.fg_comment },
		CmpItemKindText = { fg = p.fg_muted },
		CmpItemKindMethod = { fg = p.purple },
		CmpItemKindFunction = { fg = p.purple },
		CmpItemKindConstructor = { fg = p.yellow },
		CmpItemKindField = { fg = p.fg_muted },
		CmpItemKindVariable = { fg = p.fg },
		CmpItemKindClass = { fg = p.yellow },
		CmpItemKindInterface = { fg = p.yellow },
		CmpItemKindModule = { fg = p.steel },
		CmpItemKindProperty = { fg = p.fg_muted },
		CmpItemKindUnit = { fg = p.gold },
		CmpItemKindValue = { fg = p.yellow },
		CmpItemKindEnum = { fg = p.yellow },
		CmpItemKindKeyword = { fg = p.gold },
		CmpItemKindSnippet = { fg = p.sage },
		CmpItemKindColor = { fg = p.purple },
		CmpItemKindFile = { fg = p.fg_muted },
		CmpItemKindReference = { fg = p.steel },
		CmpItemKindFolder = { fg = p.sage },
		CmpItemKindEnumMember = { fg = p.yellow },
		CmpItemKindConstant = { fg = p.yellow },
		CmpItemKindStruct = { fg = p.purple },
		CmpItemKindEvent = { fg = p.gold },
		CmpItemKindOperator = { fg = p.gold },
		CmpItemKindTypeParameter = { fg = p.yellow },

		-- ── neo-tree / nvim-tree ─────────────────────────────────────────
		-- NeoTreeNormal              = { fg = p.fg,   bg = p.bg },
		-- NeoTreeNormalNC            = { fg = p.fg,   bg = p.bg },
		-- NeoTreeDirectoryName       = { fg = p.sage },
		-- NeoTreeDirectoryIcon       = { fg = p.sage },
		-- NeoTreeRootName            = { fg = p.fg_bright,  bold = true },
		-- NeoTreeFileName            = { fg = p.fg_muted },
		-- NeoTreeFileIcon            = { fg = p.steel },
		-- NeoTreeGitAdded            = { fg = p.sage },
		-- NeoTreeGitModified         = { fg = p.gold },
		-- NeoTreeGitDeleted          = { fg = p.error_red },
		-- NeoTreeGitConflict         = { fg = p.error_red,  bold = true },
		-- NeoTreeGitUntracked        = { fg = p.fg_comment },
		-- NeoTreeIndentMarker        = { fg = p.fg_nontext },
		-- NeoTreeExpander            = { fg = p.fg_special },
		-- NeoTreeSymbolicLinkTarget  = { fg = p.olive },
		--
		-- NvimTreeNormal             = { fg = p.fg,   bg = p.bg },
		-- NvimTreeFolderName         = { fg = p.sage },
		-- NvimTreeFolderIcon         = { fg = p.sage },
		-- NvimTreeRootFolder         = { fg = p.fg_bright,  bold = true },
		-- NvimTreeFileName           = { fg = p.fg_muted },
		-- NvimTreeGitNew             = { fg = p.sage },
		-- NvimTreeGitDirty           = { fg = p.gold },
		-- NvimTreeGitDeleted         = { fg = p.error_red },
		-- NvimTreeSymlink            = { fg = p.olive },
		-- NvimTreeSpecialFile        = { fg = p.sage },

		-- ── which-key ────────────────────────────────────────────────────
		WhichKey = { fg = p.sage },
		WhichKeyDesc = { fg = p.fg_muted },
		WhichKeyGroup = { fg = p.gold },
		WhichKeySeparator = { fg = p.fg_comment },
		WhichKeyValue = { fg = p.fg_comment },
		WhichKeyBorder = { fg = p.fg_special, bg = p.bg_float },
		WhichKeyNormal = { fg = p.fg_muted, bg = p.bg_float },

		-- ── indent-blankline ─────────────────────────────────────────────
		IblIndent = { fg = p.bg_nontext },
		IblScope = { fg = p.fg_special },
		IblWhitespace = { fg = p.bg_nontext },

		-- ── mini.nvim ────────────────────────────────────────────────────
		MiniStatuslineModeNormal = { fg = p.bg, bg = p.steel, bold = true },
		MiniStatuslineModeInsert = { fg = p.bg, bg = p.sage, bold = true },
		MiniStatuslineModeVisual = { fg = p.bg, bg = p.purple, bold = true },
		MiniStatuslineModeReplace = { fg = p.bg, bg = p.error_red, bold = true },
		MiniStatuslineModeCommand = { fg = p.bg, bg = p.gold, bold = true },
		MiniStatuslineModeOther = { fg = p.bg, bg = p.tan, bold = true },
		MiniStatuslineFilename = { fg = p.fg_muted, bg = p.bg_status },
		MiniStatuslineFileinfo = { fg = p.fg_muted, bg = p.bg_status },
		MiniStatuslineDevinfo = { fg = p.fg_muted, bg = p.bg_status },
		MiniStatuslineInactive = { fg = p.fg_special, bg = p.bg_status },
		MiniCursorword = { bg = p.bg_visual },
		MiniCursorwordCurrent = { bg = p.bg_visual },
		MiniPickMatchCurrent = { fg = p.fg_bright, bg = p.bg_tab_sel },
		MiniPickMatchRanges = { fg = p.sage, bold = true },
		MiniPickBorder = { fg = p.fg_special },
		MiniPickBorderText = { fg = p.fg_bright, bold = true },

		-- ── lualine placeholder (uses StatusLine groups by default) ──────
		-- Users can configure lualine's theme via muted.lualine if desired.

		-- ── Notify (nvim-notify) ─────────────────────────────────────────
		NotifyERRORBorder = { fg = p.error_red },
		NotifyWARNBorder = { fg = p.gold },
		NotifyINFOBorder = { fg = p.steel },
		NotifyDEBUGBorder = { fg = p.fg_comment },
		NotifyTRACEBorder = { fg = p.purple },
		NotifyERRORIcon = { fg = p.error_red },
		NotifyWARNIcon = { fg = p.gold },
		NotifyINFOIcon = { fg = p.steel },
		NotifyDEBUGIcon = { fg = p.fg_comment },
		NotifyTRACEIcon = { fg = p.purple },
		NotifyERRORTitle = { fg = p.error_red, bold = true },
		NotifyWARNTitle = { fg = p.gold, bold = true },
		NotifyINFOTitle = { fg = p.steel, bold = true },
		NotifyDEBUGTitle = { fg = p.fg_comment, bold = true },
		NotifyTRACETitle = { fg = p.purple, bold = true },
		NotifyERRORBody = { link = "Normal" },
		NotifyWARNBody = { link = "Normal" },
		NotifyINFOBody = { link = "Normal" },
		NotifyDEBUGBody = { link = "Normal" },
		NotifyTRACEBody = { link = "Normal" },

		-- ── Noice ────────────────────────────────────────────────────────
		NoiceCmdline = { fg = p.fg_muted, bg = p.bg_nontext },
		NoiceCmdlineIcon = { fg = p.sage },
		NoiceCmdlineIconSearch = { fg = p.gold },
		NoiceCmdlineBorder = { fg = p.fg_special, bg = p.bg_nontext },
		NoicePopup = { fg = p.fg_muted, bg = p.bg_popup },
		NoicePopupBorder = { fg = p.fg_special, bg = p.bg_popup },
		NoiceConfirm = { fg = p.fg_muted, bg = p.bg_popup },
		NoiceConfirmBorder = { fg = p.fg_special, bg = p.bg_popup },
		NoiceFormatKind = { fg = p.steel },

		-- ── Lazy.nvim ────────────────────────────────────────────────────
		LazyNormal = { fg = p.fg_muted, bg = p.bg_float },
		LazyBorder = { fg = p.fg_special, bg = p.bg_float },
		LazyButton = { fg = p.fg_muted, bg = p.bg_tab },
		LazyButtonActive = { fg = p.fg_bright, bg = p.bg_tab_sel, bold = true },
		LazyH1 = { fg = p.fg_bright, bold = true },
		LazyH2 = { fg = p.sage },
		LazyReasonCmd = { fg = p.gold },
		LazyReasonEvent = { fg = p.steel },
		LazyReasonKeys = { fg = p.purple },
		LazyReasonPlugin = { fg = p.sage },
		LazyReasonRuntime = { fg = p.olive },
		LazyReasonSource = { fg = p.tan },
		LazyReasonStart = { fg = p.fg_muted },
		LazySpecial = { fg = p.sage },
		LazyCommitType = { fg = p.gold },
		LazyCommit = { fg = p.steel },
		LazyDimmed = { fg = p.fg_special },
		LazyProgressDone = { fg = p.sage, bold = true },
		LazyProgressTodo = { fg = p.fg_comment },

		-- ── Mason ────────────────────────────────────────────────────────
		MasonNormal = { fg = p.fg_muted, bg = p.bg_float },
		MasonHeader = { fg = p.fg_bright, bold = true },
		MasonHeaderSecondary = { fg = p.sage, bold = true },
		MasonHighlight = { fg = p.sage },
		MasonHighlightBlock = { fg = p.bg, bg = p.sage },
		MasonHighlightBlockBold = { fg = p.bg, bg = p.sage, bold = true },
		MasonMuted = { fg = p.fg_comment },
		MasonMutedBlock = { fg = p.fg_muted, bg = p.bg_tab },
		MasonError = { fg = p.error_red },
	}
end

return M
