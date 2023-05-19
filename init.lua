require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

-- bootstrap base46
if not vim.loop.fs_stat(vim.g.base46_cache) then
  require("base46").compile()
end

dofile(vim.g.base46_cache .. "defaults")
require "plugins"
