--[[

  ABOUT: vim_lsp.lua 

--]]

-------------------------------------------------------------------------------

-- SECTION: rust-lab

-- .rs files
vim.lsp.enable("rust_analyzer")

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
