return {
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
  {
    'ruifm/gitlinker.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitlinker').setup({
        mappings = nil
      })
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').setup({
        defaults = {
          file_ignore_patterns = { '^doc/', 'node_modules/.*' }
        },
      })
    end,
  },
}

