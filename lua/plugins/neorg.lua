return {
  {
    "nvim-neorg/neorg",
    lazy = true, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = {
      load = {
        -- ["external.conceal-wrap"] = {},
        -- ["external.context"] = {},
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.journal"] = {},
        ["core.queries.native"] = {},
        -- ["core.integrations.zen_mode"] = {},
        -- ["core.presenter"] = {
        --   config = {
        --     zen_mode = "zen-mode",
        --   },
        -- },
        ["core.summary"] = {},
        ["core.text-objects"] = {},
        -- ["core.latex.renderer"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
            preset = "neorg",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "/home/fic/notes",
            },
            default_workspace = "notes",
            index = "index.norg",
          },
        },
      },
    },
    dependencies = {
      -- "benlubas/neorg-conceal-wrap",
      "max397574/neorg-contexts",
    },
  },
}
