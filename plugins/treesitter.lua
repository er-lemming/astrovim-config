-- Work around for that one VM. You know who you are.
-- require 'nvim-treesitter.install'.compilers = { "c99" }
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "markdown",
      "javascript",
      "typescript",
      "rust",
      "vim",
      "vimdoc",
      "jsdoc",
      "java",
    })
  end,
}
