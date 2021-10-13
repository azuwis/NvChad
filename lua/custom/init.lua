local customPlugins = require "core.customPlugins"
customPlugins.add(function(use)
  use {
    "TimUntersberger/neogit",
    cmd = {
      "Neogit",
    },
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = function()
      require("neogit").setup {
        disable_commit_confirmation = true,
        signs = {
          section = { "", "" },
          item = { "", "" },
          hunk = { "", "" },
        },
        integrations = {
          diffview = true,
        },
      }
    end,
  }
end)

local map = require("core.utils").map
map("n", "<leader>gg", ":Neogit <CR>")
