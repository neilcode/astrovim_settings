return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise"},
  { import = "astrocommunity.project.projectmgr-nvim"},
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
        enabled = true,
        file_startup = "startup.sh",
        file_shutdown = "shutdown.sh",
      },
    }
  },
}
