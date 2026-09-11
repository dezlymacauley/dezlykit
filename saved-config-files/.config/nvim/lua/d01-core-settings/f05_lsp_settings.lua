--[[

  ABOUT: f05_lsp_settings.lua

--]]

-------------------------------------------------------------------------------

-- SECTION: rust-lab

-- .rs files
vim.lsp.enable("rust_analyzer")
-------------------------------------------------------------------------------

-- SECTION: c-lab and cpp-lab

-- .c files and .cpp files
vim.lsp.enable("clangd")
-------------------------------------------------------------------------------

-- SECTION: go-lab

-- .go and .gomod files
vim.lsp.enable("gopls")
-------------------------------------------------------------------------------

-- SECTION: python-lab

-- .py files
vim.lsp.enable("ty")
-------------------------------------------------------------------------------

-- SECTION: html-and-css-lab

-- .html files
vim.lsp.enable("html")

-- .css files
vim.lsp.enable("cssls")
-------------------------------------------------------------------------------

-- SECTION: typescript-lab

-- .ts and .js files
vim.lsp.enable("vtsls")

-- .json files
vim.lsp.enable("jsonls")
-------------------------------------------------------------------------------

-- SECTION: astro-lab

vim.lsp.enable("astro")
-------------------------------------------------------------------------------
