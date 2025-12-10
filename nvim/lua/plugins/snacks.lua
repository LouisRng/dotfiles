return {
  "folke/snacks.nvim",
  opts = {
    words = {
      enabled = true, -- ✅ 启用 LSP 引用高亮 + 跳转
      debounce = 100, -- 默认值，延迟响应以避免性能问题
      hl = "LspReferenceText", -- 高亮组，可按需改成更明显颜色
    },
  },
  keys = {
    -- jump to the next/previous LSP reference using Snacks plugin
    ["]]"] = { function() Snacks.words.jump(vim.v.count1) end, desc = "Next LSP reference" },
    ["[["] = { function() Snacks.words.jump(-vim.v.count1) end, desc = "Previous LSP reference" },
  },
}
