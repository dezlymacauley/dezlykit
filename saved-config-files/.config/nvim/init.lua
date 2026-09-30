-- Disables netrw (the default file tree in Neovim)
-- This is required for the plugin `nvim-tree`
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

 -- Enable 24-bit colour
-- This is required for the plugin `nvim-tree`
vim.opt.termguicolors = true

require("d01-core-settings.f01_keymap_settings")
require("d01-core-settings.f02_native_options")
require("d01-core-settings.f03_plugin_manager")
require("d01-core-settings.f04_lsp_settings")
require("d01-core-settings.f05_diagnostic_display")
