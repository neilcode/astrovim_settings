return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.project.projectmgr-nvim" },
  { "charludo/projectmgr.nvim",
    opts = {
      autogit = {
        enabled = false,
        command = "git pull --ff-only",
      },
      reopen = false,
      session = { enabled = true, file = "Session.vim" },
      shada = { enabled = false, file = "main.shada" },
      scripts = {
        enabled = false,
        file_startup = "startup.sh",
        file_shutdown = "shutdown.sh",
      },
    }
  },
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  { "declancm/cinnamon.nvim",
    opts = {
      -- KEYMAPS:
      default_keymaps = true,   -- Create default keymaps.
      extra_keymaps = true,    -- Create extra keymaps.
      extended_keymaps = false, -- Create extended keymaps.
      override_keymaps = false, -- The plugin keymaps will override any existing keymaps.

      -- OPTIONS:
      always_scroll = false,    -- Scroll the cursor even when the window hasn't scrolled.
      centered = true,          -- Keep cursor centered in window when using window scrolling.
      disabled = false,         -- Disables the plugin.
      default_delay = 1,        -- The default delay (in ms) between each line when scrolling.
      hide_cursor = true,      -- Hide the cursor while scrolling. Requires enabling termguicolors!
      horizontal_scroll = true, -- Enable smooth horizontal scrolling when view shifts left or right.
      max_length = -1,          -- Maximum length (in ms) of a command. The line delay will be
                                -- re-calculated. Setting to -1 will disable this option.
      scroll_limit = 100,       -- Max number of lines moved before scrolling is skipped. Setting
                                -- to -1 will disable this option.
    }
  },
  { import = "astrocommunity.motion.nvim-surround" },
}
