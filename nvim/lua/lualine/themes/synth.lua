local colors = {
  bg       = "#1B2B34",
  fg       = "#CDD3DE",

  blue     = "#6699CC",
  orange   = "FA8A55",
  red      = "#EC5F67",
  green    = "#20BD9d",

  gray     = "#40403C",
  lightgray= "#767676",
}

local synth = {}

synth.normal = {
  a = { fg = colors.fg, bg = colors.bg },
  b = { fg = colors.bg, bg = colors.fg },
  c = { fg = colors.fg, bg = colors.bg },
}

synth.insert = {
  a = { fg = colors.blue, bg = colors.bg },
  b = { fg = colors.bg, bg = colors.blue },
  c = { fg = colors.blue, bg = colors.bg },
}

synth.visual = {
  a = { fg = colors.orange, bg = colors.bg },
  b = { fg = colors.bg, bg = colors.orange },
  c = { fg = colors.orange, bg = colors.bg },
}

synth.replace = {
  a = { fg = colors.red, bg = colors.bg },
  b = { fg = colors.bg, bg = colors.red },
  c = { fg = colors.red, bg = colors.bg },
}

synth.command = {
  a = { fg = colors.green, bg = colors.bg },
  b = { fg = colors.bg, bg = colors.green },
  c = { fg = colors.green, bg = colors.bg },
}

synth.inactive = {
  a = { fg = colors.lightgray, bg = colors.bg },
  b = { fg = colors.lightgray, bg = colors.bg },
  c = { fg = colors.lightgray, bg = colors.bg },
}

return synth

-- local colors = {
--   bg       = "#1a2022",
--   fg       = "#dadada",
--   gray     = "#454545",
--   lightgray= "#585858",

--   blue1    = "#45adc9",
--   blue2    = "#038cfd",
--   cyan     = "#04c0fd",
--   purple   = "#3d3bfc",
--   orange   = "#f1ba86",
--   white    = "#ffffff",
-- }

-- return {
--   normal = {
--     a = { fg = colors.bg, bg = colors.blue2, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.gray },
--     c = { fg = colors.fg, bg = colors.bg },
--   },

--   insert = {
--     a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.gray },
--     c = { fg = colors.fg, bg = colors.bg },
--   },

--   visual = {
--     a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.gray },
--     c = { fg = colors.fg, bg = colors.bg },
--   },

--   replace = {
--     a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.gray },
--     c = { fg = colors.fg, bg = colors.bg },
--   },

--   command = {
--     a = { fg = colors.bg, bg = colors.blue1, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.gray },
--     c = { fg = colors.fg, bg = colors.bg },
--   },

--   inactive = {
--     a = { fg = colors.lightgray, bg = colors.bg },
--     b = { fg = colors.lightgray, bg = colors.bg },
--     c = { fg = colors.lightgray, bg = colors.bg },
--   },
-- }
