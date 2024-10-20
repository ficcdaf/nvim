return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  -- lazy = false,
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre /home/fic/second-brain/*.md",
    "BufNewFile /home/fic/second-brain/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "epwalsh/pomo.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "second-brain",
        path = "~/second-brain",
      },
    },
    notes_subdir = "fleeting",
    daily_notes = {
      folder = "dailies",
      date_format = "%Y-%m-%d",
      alias_format = "%m %d %Y",
      default_tags = { "daily_notes" },
      template = nil,
    },
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Smart action depending on context, either follow link or toggle checkbox.
      -- ["<cr>"] = {
      --   action = function()
      --     return require("obsidian").util.smart_action()
      --   end,
      --   opts = { buffer = true, expr = true },
      -- },
    },
    new_notes_location = "notes_subdir",
    templates = {
      folder = "Utility/Templates",
      date_format = "%M %d %Y",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
    picker = {
      name = "telescope.nvim",
    },
    search_max_lines = 1000,
    -- open_notes_in = "vsplit",
  },
}
