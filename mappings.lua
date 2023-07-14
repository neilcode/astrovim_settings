-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    --
    -- BUFFER
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bF"] = { 
        function()
          vim.cmd('let @+=expand("%:p")')
        end,
        desc = "Copy filepath to clipboard (absolute)",
    },
    ["<leader>bf"] = { 
        function()
          vim.cmd('let @+=@%')
        end,
        desc = "Copy filepath to clipboard (relative)",
    },
    ["<leader>bt"] = { 
     "<cmd>TermExec size=100 direction=vertical cmd='dspec %')<cr>",
      desc = "Run Specs in Current Buffer" 
    },
    --
    -- TERMINAL
    ["<leader>tr"] = {
      function() 
        require("astronvim.utils").toggle_term_cmd("pry")
      end,
      desc = "ToggleTerm Ruby"
    },
    --
    -- GIT
    ["<leader>gy"] = {
      function() 
        require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard, add_current_line_on_normal_mode = false})
      end,
      desc = "Copy GitHub URL"
    },
    ["<leader>gB"] = {
      function() 
        require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser, add_current_line_on_normal_mode = false})
      end,
      desc = "Open on GitHub"
    },
    --
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["<leader>gy"] = {
      function() 
        require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".copy_to_clipboard})
      end,
      desc = "Copy GitHub URL"
    },
    ["<leader>gB"] = {
      function() 
        require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})
      end,
      desc = "Open on GitHub"
    },

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
