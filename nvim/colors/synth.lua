-- Clear existing highlights
vim.cmd("hi clear")
vim.cmd("syntax reset")

vim.g.colors_name = "synth"
vim.o.background = "dark"

local set = vim.api.nvim_set_hl

-- Base
set(0, "Normal", { fg = "#dadada", bg = "#1a2022" })

-- Blue-ish (#45adc9)
local blue1 = "#45adc9"
for _, group in ipairs({
  "DiffText","ErrorMsg","WarningMsg","PreProc","Exception","Error",
  "DiffDelete","GitGutterDelete","GitGutterChangeDelete",
  "cssIdentifier","cssImportant","Type","Identifier"
}) do
  set(0, group, { fg = blue1 })
end

-- Purple-ish (#3d3bfc)
local purple = "#3d3bfc"
for _, group in ipairs({
  "PMenuSel","Constant","Repeat","DiffAdd","GitGutterAdd",
  "cssIncludeKeyword","Keyword"
}) do
  set(0, group, { fg = purple })
end

-- Orange (#f1ba86)
local orange = "#f1ba86"
for _, group in ipairs({
  "IncSearch","Title","PreCondit","Debug","SpecialChar","Conditional",
  "Todo","Special","Label","Delimiter","Number","CursorLineNr",
  "Define","MoreMsg","Tag","String","MatchParen","DiffChange",
  "GitGutterChange","cssColor"
}) do
  set(0, group, { fg = orange })
end

-- Bright blue (#038cfd)
local blue2 = "#038cfd"
for _, group in ipairs({ "Function","Macro" }) do
  set(0, group, { fg = blue2 })
end

-- Cyan (#04c0fd)
local cyan = "#04c0fd"
for _, group in ipairs({
  "Directory","markdownLinkText","javaScriptBoolean",
  "Include","Storage","cssClassName","cssClassNameDot"
}) do
  set(0, group, { fg = cyan })
end

-- White
for _, group in ipairs({ "Statement","Operator","cssAttr" }) do
  set(0, group, { fg = "#ffffff" })
end

-- UI elements
set(0, "Pmenu", { fg = "#dadada", bg = "#454545" })
set(0, "SignColumn", { bg = "#1a2022" })
set(0, "Title", { fg = "#dadada" }) -- overrides earlier Title
set(0, "LineNr", { fg = "#747474", bg = "#1a2022" })
set(0, "NonText", { fg = "#585858", bg = "#1a2022" })

set(0, "Comment", { fg = "#585858", italic = true })
set(0, "SpecialComment", { fg = "#585858", italic = true })

set(0, "CursorLine", { bg = "#454545" })
set(0, "TabLineFill", { bg = "#454545" })
set(0, "TabLine", { fg = "#747474", bg = "#454545" })

set(0, "StatusLine", { fg = "#dadada", bg = "#454545", bold = true })
set(0, "StatusLineNC", { fg = "#dadada", bg = "#1a2022" })

set(0, "Search", { fg = "#dadada", bg = "#585858" })

set(0, "VertSplit", { fg = "#454545" })
set(0, "Visual", { bg = "#454545" })
