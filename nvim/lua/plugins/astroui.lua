-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "catppuccin-mocha",
    highlights = {
      init = {
        -- 这里设置透明背景（对所有主题生效）
        Normal = { bg = "none" },
        NormalNC = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        SignColumn = { bg = "none" },
        CursorLine = { bg = "none" },
        CursorLineNr = { bg = "none" },
        LineNr = { bg = "none" },
        StatusLine = { bg = "none" },
        StatusLineNC = { bg = "none" },
        VertSplit = { bg = "none" },
        WinSeparator = { bg = "none" },
      },
    },
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
