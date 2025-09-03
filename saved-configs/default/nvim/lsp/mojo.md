-- This is how to overwrite the default configuration 
-- provided by the plugin `nvim-lspconfig`

-- I want to overwrite the config for the mojo lsp 
-- because I have not installed it globally.

return {
    cmd = { "mojo-lsp-server" },
    filetypes = { "mojo" },
    root_markers = { ".git" }
}
