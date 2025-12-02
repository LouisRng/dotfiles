return {
  "xiyaowong/transparent.nvim",
  event = "VeryLazy",
  config = function()
    require("transparent").setup {
      groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "FloatBorder",
        "SignColumn",
        "MsgArea",
        "TelescopeNormal",
        "TelescopeBorder",
        "StatusLine",
        "StatusLineNC",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",
        "NeoTreeWinSeparator",
        "NeoTreeVertSplit",
      },
      extra_groups = {
        "VertSplit",
        "WinSeparator",
        "EndOfBuffer",
        "NeoTreeTabActive",
        "NeoTreeTabInactive",
        "NeoTreeTabSeparatorActive",
        "NeoTreeTabSeparatorInactive",
      },
      exclude_groups = {},
    }
  end,
}
