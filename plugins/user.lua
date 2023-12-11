return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    flavour = "latte",
    opts = {
      styles = {
        comments = { "italic" },
        keywords = { "bold" },
      },
      -- configuration options...
    },
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
