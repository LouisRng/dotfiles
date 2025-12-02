return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      treesitter = true,
      telescope = true,
      mini = false,
      notify = false,
      -- 开启 bufferline 集成
      bufferline = true,
    },
    custom_highlights = function(colors)
      return {
        -- Neo-tree: keep glassy but remove dark dividers
        NeoTreeNormal = { bg = "NONE", fg = colors.text },
        NeoTreeNormalNC = { bg = "NONE", fg = colors.subtext1 },
        NeoTreeEndOfBuffer = { bg = "NONE", fg = colors.surface0 },
        NeoTreeWinSeparator = { bg = "NONE", fg = colors.overlay0 },
        NeoTreeVertSplit = { bg = "NONE", fg = colors.overlay0 },
        NeoTreeRootName = { fg = colors.lavender, style = { "bold" } },
        NeoTreeDirectoryName = { fg = colors.blue },
        NeoTreeFileName = { fg = colors.text },
        NeoTreeTabActive = { bg = "NONE", fg = colors.lavender, style = { "bold" } },
        NeoTreeTabInactive = { bg = "NONE", fg = colors.overlay1 },
        NeoTreeTabSeparatorActive = { bg = "NONE", fg = colors.overlay0 },
        NeoTreeTabSeparatorInactive = { bg = "NONE", fg = colors.overlay0 },

        -- Bufferline/tabline: clear backgrounds to match transparent terminals
        BufferLineFill = { bg = "NONE" },
        BufferLineBackground = { bg = "NONE" },
        BufferLineSeparator = { bg = "NONE", fg = colors.overlay0 },
        BufferLineSeparatorVisible = { bg = "NONE", fg = colors.overlay0 },
        BufferLineSeparatorSelected = { bg = "NONE", fg = colors.overlay0 },
        BufferLineTab = { bg = "NONE" },
        BufferLineTabSelected = { bg = "NONE", fg = colors.text, style = { "bold" } },
        BufferLineTabClose = { bg = "NONE" },
        BufferLineCloseButton = { bg = "NONE", fg = colors.overlay1 },
        BufferLineCloseButtonVisible = { bg = "NONE", fg = colors.overlay1 },
        BufferLineCloseButtonSelected = { bg = "NONE", fg = colors.text },
        BufferLineIndicatorSelected = { bg = "NONE", fg = colors.lavender },
        BufferLineModified = { bg = "NONE", fg = colors.overlay1 },
        BufferLineModifiedVisible = { bg = "NONE", fg = colors.overlay1 },
        BufferLineModifiedSelected = { bg = "NONE", fg = colors.lavender },
        BufferLineBufferSelected = { bg = "NONE", fg = colors.text, style = { "bold" } },
        BufferLineBufferVisible = { bg = "NONE", fg = colors.overlay1 },

        -- Global split separators (affects Neo-tree columns)
        WinSeparator = { bg = "NONE", fg = colors.overlay0 },
        VertSplit = { bg = "NONE", fg = colors.overlay0 },
      }
    end,
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
