local dye = require("dye")
local theme = {}

function theme.load(config)
  local base00 = config.palette.base00
  local base01 = config.palette.base01
  local base02 = config.palette.base02
  local base03 = config.palette.base03
  local base04 = config.palette.base04
  local base05 = config.palette.base05
  local base06 = config.palette.base06
  local base07 = config.palette.base07
  local base08 = config.palette.base08
  local base09 = config.palette.base09
  local base0A = config.palette.base0A
  local base0B = config.palette.base0B
  local base0C = config.palette.base0C
  local base0D = config.palette.base0D
  local base0E = config.palette.base0E
  local base0F = config.palette.base0F

  local maybe = {
    background = config.transparent and "NONE" or base00,
    float_background = config.transparent_float and "NONE" or base01,
    nc_background = config.dim_nc_background and dye.blend(base01, base00, 0.8) or base00,
    bold = config.bold,
    italic = config.italic,
  }

  local highlights = {
    -- Custom {{{
    ["Base00"] = { fg = base00 },
    ["Base01"] = { fg = base01 },
    ["Base02"] = { fg = base02 },
    ["Base03"] = { fg = base03 },
    ["Base04"] = { fg = base04 },
    ["Base05"] = { fg = base05 },
    ["Base06"] = { fg = base06 },
    ["Base07"] = { fg = base07 },
    ["Base08"] = { fg = base08 },
    ["Base09"] = { fg = base09 },
    ["Base0A"] = { fg = base0A },
    ["Base0B"] = { fg = base0B },
    ["Base0C"] = { fg = base0C },
    ["Base0D"] = { fg = base0D },
    ["Base0E"] = { fg = base0E },
    ["Base0F"] = { fg = base0F },
    -- }}}

    -- Vim {{{
    ["ColorColumn"] = { bg = base02 },
    ["Conceal"] = { bg = "NONE" },
    ["CurSearch"] = { link = "IncSearch" },
    ["Cursor"] = { fg = base0F, bg = base03 },
    ["CursorColumn"] = { bg = base01 },
    ["CursorLine"] = { bg = dye.blend(base01, base00, 0.5) },
    ["CursorLineNr"] = { fg = base0B },
    ["DarkenedPanel"] = { bg = maybe.float_background },
    ["DarkenedStatusline"] = { bg = maybe.float_background },
    ["DiffAdd"] = { fg = base0B, bg = dye.blend(base00, base0B, 0.3) },
    ["DiffChange"] = { fg = base0A, bg = dye.blend(base00, base0A, 0.2) },
    ["DiffDelete"] = { fg = base08, bg = dye.blend(base00, base08, 0.2) },
    ["DiffText"] = { fg = base09, bg = dye.blend(base00, base09, 0.2) },
    ["diffAdded"] = { link = "DiffAdd" },
    ["diffChanged"] = { link = "DiffChange" },
    ["diffRemoved"] = { link = "DiffDelete" },
    ["Directory"] = { fg = base0D, bg = "NONE" },
    ["EndOfBuffer"] = { link = "NonText" },
    ["ErrorMsg"] = { fg = base08, bold = true },
    ["FloatBorder"] = { fg = base0B, bg = maybe.float_background },
    ["FloatTitle"] = { fg = base03 },
    ["FoldColumn"] = { fg = base03 },
    ["Folded"] = { fg = base05, bg = maybe.float_background, bold = true },
    ["IncSearch"] = { fg = base00, bg = base0A },
    ["LineNr"] = { fg = base03 },
    ["MatchParen"] = { fg = base0B, bold = maybe.bold, underline = true },
    ["ModeMsg"] = { fg = base04 },
    ["MoreMsg"] = { fg = base0B },
    ["NonText"] = { fg = base02 },
    ["Normal"] = { fg = base05, bg = maybe.background },
    ["NormalFloat"] = { fg = base0B, bg = maybe.float_background },
    ["NormalNC"] = { fg = base05, bg = maybe.nc_background },
    ["NvimInternalError"] = { fg = "#ffffff", bg = base08 },
    ["Pmenu"] = { fg = base04, bg = maybe.float_background },
    ["PmenuSbar"] = { bg = base01 },
    ["PmenuSel"] = { fg = base0B, bg = base02 },
    ["PmenuThumb"] = { bg = base0B },
    ["Question"] = { fg = base0A },
    ["QuickFixLine"] = { link = "Search" },
    ["RedrawDebugNormal"] = { fg = "#ffffff", bg = base0A },
    ["RedrawDebugClear"] = { fg = "#ffffff", bg = base0A },
    ["RedrawDebugComposed"] = { fg = "#ffffff", bg = base0C },
    ["RedrawDebugRecompose"] = { fg = "#ffffff", bg = base08 },
    ["Search"] = { fg = base00, bg = dye.blend(base00, base0A, 0.6) },
    ["SpecialKey"] = { fg = base0C },
    ["SpellBad"] = { sp = base04, [config.line] = true },
    ["SpellCap"] = { sp = base04, [config.line] = true },
    ["SpellLocal"] = { sp = base04, [config.line] = true },
    ["SpellRare"] = { sp = base04, [config.line] = true },
    ["SignColumn"] = { fg = base0B, bg = maybe.background },
    ["WinBar"] = { fg = base04, bg = maybe.background },
    ["WinBarNC"] = { link = "WinBar" },
    ["StatusLine"] = { fg = base04, bg = maybe.float_background },
    ["StatusLineNC"] = { fg = base03, bg = base01 },
    ["StatusLineTerm"] = { link = "StatusLine" },
    ["StatusLineTermNC"] = { link = "StatusLineNC" },
    ["TabLine"] = { fg = base04, bg = base01 },
    ["TabLineFill"] = { bg = maybe.background },
    ["TabLineSel"] = { fg = base05, bg = base02, bold = maybe.bold },
    ["TermCursor"] = { bg = base0A },
    ["Title"] = { fg = base0B },
    ["VertSplit"] = { fg = base0B, bold = maybe.bold },
    ["Visual"] = { bg = base02 },
    ["VisualNOS"] = { link = "Visual" },
    ["WarningMsg"] = { fg = base09 },
    ["Whitespace"] = { link = "NonText" },
    ["WildMenu"] = { link = "IncSearch" },
    -- }}}

    -- Code {{{
    ["Boolean"] = { fg = base09 },
    ["Character"] = { fg = base09 },
    ["Comment"] = { fg = base03, italic = maybe.italic },
    ["Conditional"] = { fg = base0C },
    ["Constant"] = { fg = base09 },
    ["Debug"] = { fg = base09 },
    ["Define"] = { fg = base0B },
    ["Delimiter"] = { fg = base04 },
    ["Error"] = { fg = base08 },
    ["Exception"] = { fg = base0C },
    ["Float"] = { fg = base09 },
    ["Function"] = { fg = base0C },
    ["Identifier"] = { fg = base09 },
    ["Include"] = { fg = base0B },
    ["Keyword"] = { fg = base0B },
    ["Label"] = { fg = base0C },
    ["Macro"] = { fg = base0B },
    ["Number"] = { fg = base09 },
    ["Operator"] = { fg = base04 },
    ["PreCondit"] = { fg = base0B },
    ["PreProc"] = { fg = base0B },
    ["Repeat"] = { fg = base0C },
    ["Special"] = { fg = base0C },
    ["SpecialChar"] = { fg = base09 },
    ["SpecialComment"] = { fg = base0B },
    ["Statement"] = { fg = base0C },
    ["StorageClass"] = { fg = base0C },
    ["String"] = { fg = base0A },
    ["Structure"] = { fg = base0C },
    ["Tag"] = { fg = base09 },
    ["Todo"] = { fg = base0B },
    ["Type"] = { fg = base0C },
    ["Typedef"] = { link = "Type" },
    ["Underlined"] = { underline = true },
    -- }}}

    -- HTML {{{
    ["htmlArg"] = { fg = base0B },
    ["htmlBold"] = { bold = true },
    ["htmlEndTag"] = { fg = base04 },
    ["htmlH1"] = { link = "@neorg.headings.1.prefix.norg" },
    ["htmlH2"] = { link = "@neorg.headings.2.prefix.norg" },
    ["htmlH3"] = { link = "@neorg.headings.3.prefix.norg" },
    ["htmlH4"] = { link = "@neorg.headings.4.prefix.norg" },
    ["htmlH5"] = { link = "@neorg.headings.5.prefix.norg" },
    ["htmlItalic"] = { italic = maybe.italic },
    ["htmlLink"] = { fg = base0D },
    ["htmlTag"] = { fg = base04 },
    ["htmlTagN"] = { fg = base0B },
    ["htmlTagName"] = { fg = base0C },
    -- }}}

    -- Markdown {{{
    ["markdownDelimiter"] = { fg = base04 },
    ["markdownH1"] = { link = "@neorg.headings.1.prefix.norg" },
    ["markdownH1Delimiter"] = { link = "markdownH1" },
    ["markdownH2"] = { link = "@neorg.headings.2.prefix.norg" },
    ["markdownH2Delimiter"] = { link = "markdownH2" },
    ["markdownH3"] = { link = "@neorg.headings.3.prefix.norg" },
    ["markdownH3Delimiter"] = { link = "markdownH3" },
    ["markdownH4"] = { link = "@neorg.headings.4.prefix.norg" },
    ["markdownH4Delimiter"] = { link = "markdownH4" },
    ["markdownH5"] = { link = "@neorg.headings.5.prefix.norg" },
    ["markdownH5Delimiter"] = { link = "markdownH5" },
    ["markdownH6"] = { link = "@neorg.headings.6.prefix.norg" },
    ["markdownH6Delimiter"] = { link = "markdownH6" },
    ["markdownLinkText"] = { fg = base0D, sp = base0D, underline = true },
    ["markdownUrl"] = { link = "markdownLinkText" },
    ["mkdCode"] = { fg = base0C, italic = maybe.italic },
    ["mkdCodeDelimiter"] = { fg = base0A },
    ["mkdCodeEnd"] = { fg = base0C },
    ["mkdCodeStart"] = { fg = base0C },
    ["mkdFootnotes"] = { fg = base0C },
    ["mkdID"] = { fg = base0C, underline = true },
    ["mkdInlineURL"] = { fg = base0D, underline = true },
    ["mkdLink"] = { link = "mkdInlineURL" },
    ["mkdLinkDef"] = { link = "mkdInlineURL" },
    ["mkdListItemLine"] = { fg = base0B },
    ["mkdRule"] = { fg = base04 },
    ["mkdURL"] = { link = "mkdInlineURL" },
    ["@markup.quote.markdown"] = { link = "@comment" },
    ["@markup.heading.1.markdown"] = { link = "@neorg.headings.1.prefix.norg" },
    ["@markup.heading.2.markdown"] = { link = "@neorg.headings.2.prefix.norg" },
    ["@markup.heading.3.markdown"] = { link = "@neorg.headings.3.prefix.norg" },
    ["@markup.heading.4.markdown"] = { link = "@neorg.headings.4.prefix.norg" },
    ["@markup.heading.5.markdown"] = { link = "@neorg.headings.5.prefix.norg" },
    ["@markup.heading.6.markdown"] = { link = "@neorg.headings.6.prefix.norg" },
    -- }}}

    -- Diagnostics {{{
    ["DiagnosticError"] = { fg = base08 },
    ["DiagnosticHint"] = { fg = base0D },
    ["DiagnosticInfo"] = { fg = base0C },
    ["DiagnosticWarn"] = { fg = base09 },
    ["DiagnosticDefaultError"] = { fg = base08 },
    ["DiagnosticDefaultHint"] = { fg = base0D },
    ["DiagnosticDefaultInfo"] = { fg = base0C },
    ["DiagnosticDefaultWarn"] = { fg = base09 },
    ["DiagnosticFloatingError"] = { fg = base08 },
    ["DiagnosticFloatingHint"] = { fg = base0D },
    ["DiagnosticFloatingInfo"] = { fg = base0C },
    ["DiagnosticFloatingWarn"] = { fg = base09 },
    ["DiagnosticSignError"] = { fg = base08 },
    ["DiagnosticSignHint"] = { fg = base0D },
    ["DiagnosticSignInfo"] = { fg = base0C },
    ["DiagnosticSignWarn"] = { fg = base09 },
    ["DiagnosticStatusLineError"] = { fg = base08, bg = base01 },
    ["DiagnosticStatusLineHint"] = { fg = base0D, bg = base01 },
    ["DiagnosticStatusLineInfo"] = { fg = base0C, bg = base01 },
    ["DiagnosticStatusLineWarn"] = { fg = base09, bg = base01 },
    ["DiagnosticUnderlineError"] = { sp = base08, [config.line] = true },
    ["DiagnosticUnderlineHint"] = { sp = base0D, [config.line] = true },
    ["DiagnosticUnderlineInfo"] = { sp = base0C, [config.line] = true },
    ["DiagnosticUnderlineWarn"] = { sp = base09, [config.line] = true },
    ["DiagnosticUnnecessary"] = { fg = base0F },
    ["DiagnosticVirtualTextError"] = { fg = base08 },
    ["DiagnosticVirtualTextHint"] = { fg = base0D },
    ["DiagnosticVirtualTextInfo"] = { fg = base0C },
    ["DiagnosticVirtualTextWarn"] = { fg = base09 },
    -- }}}

    -- Healthcheck {{{
    ["healthError"] = { fg = base08 },
    ["healthSuccess"] = { fg = base0C },
    ["healthWarning"] = { fg = base09 },
    -- }}}

    -- Treesitter {{{
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "@character" },
    ["@class"] = { fg = base0C },
    ["@comment"] = { link = "Comment" },
    ["@error"] = { fg = base08 },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "@constant" },
    ["@constructor"] = { fg = base0C },
    ["@field"] = { fg = base0C },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.macro"] = { link = "@function" },
    ["@include"] = { link = "Include" },
    ["@interface"] = { fg = base0C },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.operator"] = { fg = base04 },
    ["@label"] = { link = "Label" },
    ["@macro"] = { link = "Macro" },
    ["@method"] = { fg = base0C },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { fg = base0D, italic = maybe.italic },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { fg = base0C, italic = maybe.italic },
    ["@punctuation"] = { fg = base04 },
    ["@punctuation.bracket"] = { link = "@punctuation" },
    ["@punctuation.delimiter"] = { link = "@punctuation" },
    ["@punctuation.special"] = { link = "@punctuation" },
    ["@regexp"] = { link = "String" },
    ["@repeat"] = { link = "Repeat" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = base0C },
    ["@string.special"] = { link = "@string" },
    ["@symbol"] = { link = "Identifier" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { fg = base0B },
    ["@tag.delimiter"] = { fg = base04 },
    ["@text"] = { fg = base0B },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.math"] = { link = "Special" },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.reference.vimdoc"] = { link = "Special" },
    ["@text.title"] = { link = "Title" },
    ["@text.uri"] = { fg = base0D },
    ["@text.note"] = { link = "SpecialComment" },
    ["@text.warning"] = { fg = base09 },
    ["@text.danger"] = { fg = base08 },
    ["@todo"] = { link = "Todo" },
    ["@type"] = { link = "Type" },
    ["@variable"] = { fg = base05, italic = maybe.italic },
    ["@variable.builtin"] = { link = "@variable" },
    ["@namespace"] = { link = "@include" },
    -- }}}

    -- LSP {{{
    ["LspInlayHint"] = { fg = base03, underline = true },
    ["@lsp"] = {},
    ["@lsp.type.comment"] = {},
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.interface"] = { link = "@interface" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.function.defaultLibrary"] = { link = "Function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["LspReferenceText"] = { bg = base0B },
    ["LspReferenceRead"] = { bg = base0B },
    ["LspReferenceWrite"] = { bg = base0B },
    -- }}}

    -- stevearc/aerial.nvim {{{
    ["AerialLine"] = { fg = base0D, bg = dye.blend(base00, base0D, 0.2) },
    ["AerialArrayIcon"] = { fg = base0A },
    ["AerialBooleanIcon"] = { fg = base0A },
    ["AerialClassIcon"] = { fg = base0C },
    ["AerialConstantIcon"] = { fg = base0A },
    ["AerialConstructorIcon"] = { fg = base0A },
    ["AerialEnumIcon"] = { fg = base0A },
    ["AerialEnumMemberIcon"] = { fg = base0C },
    ["AerialEventIcon"] = { fg = base0A },
    ["AerialFieldIcon"] = { fg = base0C },
    ["AerialFileIcon"] = { fg = base00 },
    ["AerialFunctionIcon"] = { fg = base0C },
    ["AerialInterfaceIcon"] = { fg = base0C },
    ["AerialKeyIcon"] = { fg = base0B },
    ["AerialKeywordIcon"] = { fg = base0C },
    ["AerialMethodIcon"] = { fg = base0C },
    ["AerialModuleIcon"] = { fg = base0A },
    ["AerialNamespaceIcon"] = { fg = base00 },
    ["AerialNullIcon"] = { fg = base08 },
    ["AerialNumberIcon"] = { fg = base0A },
    ["AerialObjectIcon"] = { fg = base0A },
    ["AerialOperatorIcon"] = { fg = base04 },
    ["AerialPackageIcon"] = { fg = base00 },
    ["AerialPropertyIcon"] = { fg = base0C },
    ["AerialStringIcon"] = { fg = base0A },
    ["AerialStructIcon"] = { fg = base0C },
    ["AerialTypeParameterIcon"] = { fg = base0C },
    ["AerialVariableIcon"] = { fg = base0B },
    -- }}}

    -- hrsh7th/nvim-cmp {{{
    --   - each highlight group has a corresponding one succeeds with "Default"
    --   - these are set by a ColorScheme `:autocmd ___cmp___` that is set in `nvim-cmp/plugin/cmp.lua`
    --     so they can't be overridden (they'll be reset after colorscheme change)
    --   - the non-Default groups initially link to the Default ones but can be overridden
    ["CmpItemAbbr"] = { fg = base04 },
    ["CmpItemAbbrDeprecated"] = { fg = base04, strikethrough = true },
    ["CmpItemAbbrMatch"] = { fg = base05, bold = true },
    ["CmpItemAbbrMatchFuzzy"] = { fg = base05, bold = true },

    ["CmpItemKind"] = { fg = dye.blend(base03, base04, 0.7) },
    ["CmpItemKindClass"] = { fg = base0C },
    ["CmpItemKindColor"] = { default = true, link = "CmpItemKindColorDefault" },
    ["CmpItemKindConstant"] = { default = true, link = "CmpItemKindConstantDefault" },
    ["CmpItemKindConstructor"] = { default = true, link = "CmpItemKindConstructorDefault" },
    ["CmpItemKindEnum"] = { default = true, link = "CmpItemKindEnumDefault" },
    ["CmpItemKindEnumMember"] = { default = true, link = "CmpItemKindEnumMemberDefault" },
    ["CmpItemKindEvent"] = { default = true, link = "CmpItemKindEventDefault" },
    ["CmpItemKindField"] = { default = true, link = "CmpItemKindFieldDefault" },
    ["CmpItemKindFile"] = { default = true, link = "CmpItemKindFileDefault" },
    ["CmpItemKindFolder"] = { default = true, link = "CmpItemKindFolderDefault" },
    ["CmpItemKindFunction"] = { fg = base0A },
    ["CmpItemKindInterface"] = { fg = base0C },
    ["CmpItemKindKeyword"] = { default = true, link = "CmpItemKindKeywordDefault" },
    ["CmpItemKindMethod"] = { fg = base0C },
    ["CmpItemKindModule"] = { default = true, link = "CmpItemKindModuleDefault" },
    ["CmpItemKindOperator"] = { default = true, link = "CmpItemKindOperatorDefault" },
    ["CmpItemKindProperty"] = { default = true, link = "CmpItemKindPropertyDefault" },
    ["CmpItemKindReference"] = { default = true, link = "CmpItemKindReferenceDefault" },
    ["CmpItemKindSnippet"] = { fg = base0A },
    ["CmpItemKindStruct"] = { default = true, link = "CmpItemKindStructDefault" },
    ["CmpItemKindText"] = { default = true, link = "CmpItemKindTextDefault" },
    ["CmpItemKindTypeParameter"] = { default = true, link = "CmpItemKindTypeParameterDefault" },
    ["CmpItemKindUnit"] = { default = true, link = "CmpItemKindUnitDefault" },
    ["CmpItemKindValue"] = { default = true, link = "CmpItemKindValueDefault" },
    ["CmpItemKindVariable"] = { fg = base0B },

    ["CmpItemKindClassDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindColorDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindConstantDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindConstructorDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindDefault"] = { fg = base0C },
    ["CmpItemKindEnumDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindEnumMemberDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindEventDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindFieldDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindFileDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindFolderDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindFunctionDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindInterfaceDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindKeywordDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindMethodDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindModuleDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindOperatorDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindPropertyDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindReferenceDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindSnippetDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindStructDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindTextDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindTypeParameterDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindUnitDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindValueDefault"] = { link = "CmpItemKind" },
    ["CmpItemKindVariableDefault"] = { link = "CmpItemKind" },

    ["CmpItemMenu"] = { default = true, link = "CmpItemMenuDefault" },
    ["CmpItemMenuDefault"] = { fg = base04, italic = maybe.italic },
    ["CmpGhostText"] = { fg = base03, italic = maybe.italic, underline = true },
    -- }}}

    -- Saghen/blink.cmp {{{
    ["BlinkCmpMenu"] = { link = "Normal" },
    ["BlinkCmpMenuBorder"] = { link = "Normal" },
    ["BlinkCmpMenuSelection"] = { bg = base01, bold = maybe.bold },
    ["BlinkCmpScrollBarThumb"] = { bg = base0A },
    ["BlinkCmpScrollBarGutter"] = {},

    ["BlinkCmpDoc"] = { link = "BlinkCmpMenu" },
    ["BlinkCmpDocBorder"] = { fg = base0B },
    ["BlinkCmpDocSeparator"] = { fg = base03 },
    ["BlinkCmpDocCursorLine"] = {},
    ["BlinkCmpSignatureHelp"] = { link = "BlinkCmpMenu" },
    ["BlinkCmpSignatureHelpBorder"] = { fg = base03 },
    ["BlinkCmpSignatureHelpActiveParameter"] = { link = "BlinkCmpMenuSelection" },

    ["BlinkCmpLabel"] = {},
    ["BlinkCmpLabelDeprecated"] = {},
    ["BlinkCmpLabelMatch"] = { fg = base0D, bold = maybe.bold },
    ["BlinkCmpLabelDetail"] = {},
    ["BlinkCmpLabelDescription"] = {},

    ["BlinkCmpSource"] = { fg = base03 },

    ["BlinkCmpKind"] = { link = "CmpItemKind" },
    ["BlinkCmpKindClass"] = { link = "CmpItemKindClass" },
    ["BlinkCmpKindColor"] = { link = "CmpItemKindColor" },
    ["BlinkCmpKindConstant"] = { link = "CmpItemKindConstant" },
    ["BlinkCmpKindConstructor"] = { link = "CmpItemKindConstructor" },
    ["BlinkCmpKindEnum"] = { link = "CmpItemKindEnum" },
    ["BlinkCmpKindEnumMember"] = { link = "CmpItemKindEnumMember" },
    ["BlinkCmpKindEvent"] = { link = "CmpItemKindEvent" },
    ["BlinkCmpKindField"] = { link = "CmpItemKindField" },
    ["BlinkCmpKindFile"] = { link = "CmpItemKindFile" },
    ["BlinkCmpKindFolder"] = { link = "CmpItemKindFolder" },
    ["BlinkCmpKindFunction"] = { link = "CmpItemKindFunction" },
    ["BlinkCmpKindInterface"] = { link = "CmpItemKindInterface" },
    ["BlinkCmpKindKeyword"] = { link = "CmpItemKindKeyword" },
    ["BlinkCmpKindMethod"] = { link = "CmpItemKindMethod" },
    ["BlinkCmpKindModule"] = { link = "CmpItemKindModule" },
    ["BlinkCmpKindOperator"] = { link = "CmpItemKindOperator" },
    ["BlinkCmpKindProperty"] = { link = "CmpItemKindProperty" },
    ["BlinkCmpKindReference"] = { link = "CmpItemKindReference" },
    ["BlinkCmpKindSnippet"] = { link = "CmpItemKindSnippet" },
    ["BlinkCmpKindStruct"] = { link = "CmpItemKindStruct" },
    ["BlinkCmpKindText"] = { link = "CmpItemKindText" },
    ["BlinkCmpKindTypeParameter"] = { link = "CmpItemKindTypeParameter" },
    ["BlinkCmpKindUnit"] = { link = "CmpItemKindUnit" },
    ["BlinkCmpKindValue"] = { link = "CmpItemKindValue" },
    ["BlinkCmpKindVariable"] = { link = "CmpItemKindVariable" },

    ["BlinkCmpGhostText"] = { link = "CmpGhostText" },
    -- }}}

    -- TimUntersberger/neogit {{{
    -- ----- Status Buffer -----
    ["NeogitSectionHeader"] = { fg = base0D, bold = maybe.bold, underline = true },

    ["NeogitBranch"] = { fg = base0C }, -- local branches
    ["NeogitBranchHead"] = { fg = base0C, bold = maybe.bold }, -- current HEAD in LogBuffer
    ["NeogitRemote"] = { fg = base0F }, -- remote branches
    ["NeogitObjectID"] = { fg = base0E }, -- object SHA hash
    ["NeogitStash"] = { fg = base0A }, -- stash name
    ["NeogitRebaseDone"] = { fg = base0C, bold = maybe.bold, underline = true }, -- current HEAD in LogBuffer

    -- Change types
    ["NeogitChangeAdded"] = { fg = base0B },
    ["NeogitChangeModified"] = { fg = base0A },
    ["NeogitChangeRenamed"] = { fg = base09 },
    ["NeogitChangeDeleted"] = { fg = base08 },
    ["NeogitChangeUpdated"] = { fg = base0E },
    ["NeogitChangeCopied"] = { fg = base0D },
    ["NeogitChangeNewFile"] = { fg = base08 },
    ["NeogitChangeUnmerged"] = { fg = base09 },

    -- Sign highlights
    ["NeogitHunkHeader"] = { bg = dye.blend(base00, base01, 0.6) },
    ["NeogitDiffContext"] = { bg = dye.blend(base00, base01, 0.2) },
    ["NeogitDiffAdd"] = { link = "DiffAdd" },
    ["NeogitDiffDelete"] = { link = "DiffRemoved" },
    ["NeogitDiffHeader"] = { bg = dye.blend(base00, base01, 0.2) },

    -- Sign highlights for current context
    ["NeogitHunkHeaderHighlight"] = { link = "NeogitHunkHeader" },
    ["NeogitDiffContextHighlight"] = { link = "NeogitDiffContext" },
    ["NeogitDiffAddHighlight"] = { link = "NeogitDiffAdd" },
    ["NeogitDiffDeleteHighlight"] = { link = "NeogitDiffDelete" },
    ["NeogitDiffHeaderHighlight"] = { link = "NeogitDiffHeader" },

    -- Sign highlights for current cursorline
    ["NeogitHunkHeaderCursor"] = { link = "CursorLine" },
    ["NeogitDiffContextCursor"] = { link = "CursorLine" },
    ["NeogitDiffAddCursor"] = { fg = base0B, bg = dye.blend(base00, base0B, 0.2), underline = true }, -- TODO: use dye
    ["NeogitDiffDeleteCursor"] = { fg = base08, bg = dye.blend(base00, base0A, 0.2), underline = true }, -- TODO: use dye
    ["NeogitDiffHeaderCursor"] = { link = "CursorLine" },

    -- ----- Log-view Buffer -----
    ["NeogitGraphAuthor"] = { fg = base0F },

    -- Graph colors when --colors is enabled
    ["NeogitGraphBlack"] = { fg = base00 },
    ["NeogitGraphBoldBlack"] = { fg = base00, bold = maybe.bold },
    ["NeogitGraphRed"] = { fg = base08 },
    ["NeogitGraphBoldRed"] = { fg = base08, bold = maybe.bold },
    ["NeogitGraphGreen"] = { fg = base0B },
    ["NeogitGraphBoldGreen"] = { fg = base0B, bold = maybe.bold },
    ["NeogitGraphYellow"] = { fg = base0A },
    ["NeogitGraphBoldYellow"] = { fg = base0A, bold = maybe.bold },
    ["NeogitGraphBlue"] = { fg = base0D },
    ["NeogitGraphBoldBlue"] = { fg = base0D, bold = maybe.bold },
    ["NeogitGraphPurple"] = { fg = base0E },
    ["NeogitGraphBoldPurple"] = { fg = base0E, bold = maybe.bold },
    ["NeogitGraphCyan"] = { fg = base0C },
    ["NeogitGraphBoldCyan"] = { fg = base0C, bold = maybe.bold },
    ["NeogitGraphWhite"] = { fg = base07 },
    ["NeogitGraphBoldWhite"] = { fg = base07, bold = maybe.bold },
    ["NeogitGraphGray"] = { fg = base03 },
    ["NeogitGraphBoldGray"] = { fg = base03, bold = maybe.bold },
    ["NeogitGraphOrange"] = { fg = base09 },
    ["NeogitGraphBoldOrange"] = { fg = base09, bold = maybe.bold },

    -- ----- Command-History Buffer -----
    ["NeogitCommandText"] = { fg = base04 },
    ["NeogitCommandTime"] = { fg = base03 },
    ["NeogitCommandCodeNormal"] = { fg = base0A },
    ["NeoogitCommandCodeError"] = { fg = base08 },

    -- ----- Commit-Select Buffer -----
    ["NeogitFloatHeader"] = { fg = base0D },
    ["NeogitFloatHeaderHighlight"] = { fg = base0D },

    -- ----- Popups -----
    ["NeogitPopupSectionTitle"] = { fg = base0C },
    ["NeogitPopupBranchName"] = { fg = base0C, bold = maybe.bold, underline = true },
    ["NeogitPopupBold"] = { fg = base0C, bold = maybe.bold },

    -- Switches (boolean cli flags)
    ["NeogitPopupSwitchKey"] = { fg = base09 },
    ["NeogitPopupSwitchEnabled"] = { fg = base0A },
    ["NeogitPopupSwitchDisabled"] = { fg = base03, italic = maybe.italic },

    -- Options (cli flags that take an argument)
    ["NeogitPopupOptionKey"] = { link = "NeogitPopupSwitchKey" },
    ["NeogitPopupOptionEnabled"] = { link = "NeogitPopupSwitchEnabled" },
    ["NeogitPopupOptionDisabled"] = { link = "NeogitPopupSwitchDisabled" },

    -- Config
    ["NeogitPopupConfigKey"] = { link = "NeogitPopupSwitchKey" },
    ["NeogitPopupConfigEnabled"] = { link = "NeogitPopupSwitchEnabled" },
    ["NeogitPopupConfigDisabled"] = { link = "NeogitPopupSwitchDisabled" },

    -- Actions (key that triggers function)
    ["NeogitPopupActionKey"] = { fg = base0B },
    ["NeogitPopupActionDisabled"] = { fg = base03 },

    -- }}}

    -- nvim-neorg/neorg {{{
    ["NeorgHeading1Prefix"] = { link = "@neorg.headings.1.prefix.norg" },
    ["NeorgHeading1Title"] = { link = "NeorgHeading1Prefix" },
    ["NeorgHeading2Prefix"] = { link = "@neorg.headings.2.prefix.norg" },
    ["NeorgHeading2Title"] = { link = "NeorgHeading2Prefix" },
    ["NeorgHeading3Prefix"] = { link = "@neorg.headings.3.prefix.norg" },
    ["NeorgHeading3Title"] = { link = "NeorgHeading3Prefix" },
    ["NeorgHeading4Prefix"] = { link = "@neorg.headings.4.prefix.norg" },
    ["NeorgHeading4Title"] = { link = "NeorgHeading4Prefix" },
    ["NeorgHeading5Prefix"] = { link = "@neorg.headings.5.prefix.norg" },
    ["NeorgHeading5Title"] = { link = "NeorgHeading5Prefix" },
    ["NeorgHeading6Prefix"] = { link = "@neorg.headings.6.prefix.norg" },
    ["NeorgHeading6Title"] = { link = "NeorgHeading6Prefix" },
    ["NeorgMarkerTitle"] = { fg = base0B, bold = true },
    ["@neorg.headings.1.prefix.norg"] = { fg = base0D, bold = maybe.bold },
    ["@neorg.headings.1.title.norg"] = { link = "@neorg.headings.1.title.norg" },
    ["@neorg.headings.2.prefix.norg"] = { fg = base0C, bold = maybe.bold },
    ["@neorg.headings.2.title.norg"] = { link = "@neorg.headings.2.title.norg" },
    ["@neorg.headings.3.prefix.norg"] = { fg = base0A, bold = maybe.bold },
    ["@neorg.headings.3.title.norg"] = { link = "@neorg.headings.3.title.norg" },
    ["@neorg.headings.4.prefix.norg"] = { fg = base09, bold = maybe.bold },
    ["@neorg.headings.4.title.norg"] = { link = "@neorg.headings.4.title.norg" },
    ["@neorg.headings.5.prefix.norg"] = { fg = base0B, bold = maybe.bold },
    ["@neorg.headings.5.title.norg"] = { link = "@neorg.headings.5.title.norg" },
    ["@neorg.headings.6.prefix.norg"] = { fg = base0C, bold = maybe.bold },
    ["@neorg.headings.6.title.norg"] = { link = "@neorg.headings.6.title.norg" },
    ["@neorg.markup.verbatim"] = { fg = base03 },
    ["@neorg.anchors.declaration.norg"] = { fg = base0D },
    ["@neorg.tags.ranged_verbatim.code_block"] = { bg = base01 },
    -- }}}

    -- nvim-treesitter/nvim-treesitter-context
    ["TreesitterContext"] = { bg = base00 },
    ["TreesitterContextSeparator"] = { fg = base03 },
    ["TreesitterContextLineNumber"] = { link = "LineNr" },
    ["TreesitterContextBottom"] = { link = "TreesitterContext" },
    ["TreesitterContextLineNumberBottom"] = { link = "TreesitterContextLineNumber" },

    -- nvim-telescope/telescope.nvim {{{
    ["TelescopeBorder"] = { fg = base0B, bg = base01 },
    ["TelescopeMatching"] = { fg = base0A },
    ["TelescopeNormal"] = { fg = base04, bg = base01 },
    ["TelescopePromptNormal"] = { fg = base0B, bg = base01 },
    ["TelescopePromptPrefix"] = { fg = base04 },
    ["TelescopeSelection"] = { fg = base0B, bg = base02 },
    ["TelescopeSelectionCaret"] = { fg = base0A, bg = base02 },
    ["TelescopeTitle"] = { fg = base04 },
    -- }}}

    -- rcarriga/nvim-notify {{{
    ["NotifyINFOBorder"] = { fg = base0B },
    ["NotifyINFOTitle"] = { link = "NotifyINFOBorder" },
    ["NotifyINFOIcon"] = { link = "NotifyINFOBorder" },
    ["NotifyWARNBorder"] = { fg = base09 },
    ["NotifyWARNTitle"] = { link = "NotifyWARNBorder" },
    ["NotifyWARNIcon"] = { link = "NotifyWARNBorder" },
    ["NotifyDEBUGBorder"] = { fg = base03 },
    ["NotifyDEBUGTitle"] = { link = "NotifyDEBUGBorder" },
    ["NotifyDEBUGIcon"] = { link = "NotifyDEBUGBorder" },
    ["NotifyTRACEBorder"] = { fg = base0B },
    ["NotifyTRACETitle"] = { link = "NotifyTRACEBorder" },
    ["NotifyTRACEIcon"] = { link = "NotifyTRACEBorder" },
    ["NotifyERRORBorder"] = { fg = base08 },
    ["NotifyERRORTitle"] = { link = "NotifyERRORBorder" },
    ["NotifyERRORIcon"] = { link = "NotifyERRORBorder" },
    -- }}}

    -- rcarriga/nvim-dap-ui {{{
    ["DapUIVariable"] = { link = "Normal" },
    ["DapUIValue"] = { link = "Normal" },
    ["DapUIFrameName"] = { link = "Normal" },
    ["DapUIThread"] = { fg = base0A },
    ["DapUIWatchesValue"] = { link = "DapUIThread" },
    ["DapUIBreakpointsInfo"] = { link = "DapUIThread" },
    ["DapUIBreakpointsCurrentLine"] = { fg = base0A, bold = true },
    ["DapUIWatchesEmpty"] = { fg = base08 },
    ["DapUIWatchesError"] = { link = "DapUIWatchesEmpty" },
    ["DapUIBreakpointsDisabledLine"] = { fg = base03 },
    ["DapUISource"] = { fg = base0B },
    ["DapUIBreakpointsPath"] = { fg = base0C },
    ["DapUIScope"] = { link = "DapUIBreakpointsPath" },
    ["DapUILineNumber"] = { link = "DapUIBreakpointsPath" },
    ["DapUIBreakpointsLine"] = { link = "DapUIBreakpointsPath" },
    ["DapUIFloatBorder"] = { link = "DapUIBreakpointsPath" },
    ["DapUIStoppedThread"] = { link = "DapUIBreakpointsPath" },
    ["DapUIDecoration"] = { link = "DapUIBreakpointsPath" },
    ["DapUIModifiedValue"] = { fg = base0C, bold = true },
    -- }}}

    -- SmiteshP/nvim-navic {{{
    ["NavicIconsArray"] = { fg = base0A },
    ["NavicIconsBoolean"] = { fg = base0A },
    ["NavicIconsClass"] = { fg = base0C },
    ["NavicIconsConstant"] = { fg = base0A },
    ["NavicIconsConstructor"] = { fg = base0A },
    ["NavicIconsEnum"] = { fg = base0A },
    ["NavicIconsEnumMember"] = { fg = base0C },
    ["NavicIconsEvent"] = { fg = base0A },
    ["NavicIconsField"] = { fg = base0C },
    ["NavicIconsFile"] = { fg = base00 },
    ["NavicIconsFunction"] = { fg = base0C },
    ["NavicIconsInterface"] = { fg = base0C },
    ["NavicIconsKey"] = { fg = base0B },
    ["NavicIconsKeyword"] = { fg = base0C },
    ["NavicIconsMethod"] = { fg = base0C },
    ["NavicIconsModule"] = { fg = base0A },
    ["NavicIconsNamespace"] = { fg = base00 },
    ["NavicIconsNull"] = { fg = base08 },
    ["NavicIconsNumber"] = { fg = base0A },
    ["NavicIconsObject"] = { fg = base0A },
    ["NavicIconsOperator"] = { fg = base04 },
    ["NavicIconsPackage"] = { fg = base00 },
    ["NavicIconsProperty"] = { fg = base0C },
    ["NavicIconsString"] = { fg = base0A },
    ["NavicIconsStruct"] = { fg = base0C },
    ["NavicIconsTypeParameter"] = { fg = base0C },
    ["NavicIconsVariable"] = { fg = base0B },
    ["NavicSeparator"] = { link = "Comment" },
    ["NavicText"] = { link = "Normal" },
    -- }}}
  }

  vim.g.terminal_color_0 = base00 -- black
  vim.g.terminal_color_8 = base03 -- bright black
  vim.g.terminal_color_1 = base08 -- red
  vim.g.terminal_color_9 = base08 -- bright red
  vim.g.terminal_color_2 = base0B -- green
  vim.g.terminal_color_10 = base0B -- bright green
  vim.g.terminal_color_3 = base0A -- yellow
  vim.g.terminal_color_11 = base0A -- bright yellow
  vim.g.terminal_color_4 = base0D -- blue
  vim.g.terminal_color_12 = base0D -- bright blue
  vim.g.terminal_color_5 = base0E -- magenta
  vim.g.terminal_color_13 = base0E -- bright magenta
  vim.g.terminal_color_6 = base0C -- cyan
  vim.g.terminal_color_14 = base0C -- bright cyan
  vim.g.terminal_color_7 = base05 -- white
  vim.g.terminal_color_15 = base05 -- bright white

  for group, attrs in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
end

return theme

-- vim: foldmethod=marker
