return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true, -- 打开透明
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
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
