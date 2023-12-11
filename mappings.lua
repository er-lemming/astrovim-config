-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    ["<C-n>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<C-p>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<C-u>"] = { "<C-u>zz" },
    ["<C-d>"] = { "<C-d>zz" },
    n = { "nzzzv" },
    N = { "Nzzzv" },
    ["<C-k>"] = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" },
    ["<C-j>"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },

    ["<leader>sr"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
    ["<leader>gd"] = { function() vim.lsp.buf.definition() end, desc = "Go to definition" },
    ["<leader>df"] = { function() vim.diagnostic.open_float() end, desc = "Open float" },
    ["<leader>ca"] = { function() vim.lsp.buf.code_action() end, desc = "Code actions" },
    ["<leader>rf"] = { function() vim.lsp.buf.references() end, desc = "See references" },
    ["<leader>gD"] = { function() require("gitsigns").diffthis() end, desc = "View Git diff" },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    J = { ":m '>+1<CR>gv=gv" },
    K = { ":m '<-2<CR>gv=gv" },
  },
  i = {
    ["<C-c>"] = { "<Esc>" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<C-q>"] = false,
  },
}
