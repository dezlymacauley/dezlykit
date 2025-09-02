-- ABOUT: This is a `data only` plugin 
-- So it does not NOT have a `require("nvim-lspconfig)` line.
-- It used to in the past but that has been deprecated.

-- This plugin now provides basic default LSP client configurations 
-- for a variety of LSP servers, when you use Neovim's built-in
-- `vim.lsp()` function.

-- The main benefit of this plugin is that you don't have to manually
-- configure each language server, unless you want to. 

-- For the majority of languages don't need to change the default setting.

-- NOTE: How to get language support in Neovim without nvim lspconfig.

--[[
    E.g. Let's say you wanted to install `basedpyright` so that you can get
    language support for Python.

    You would have to do four steps:

    1. Install the language server on your system

    2. Ensure that the language server is on your path 
    so that Neovim can use it

    3. Create a configuration for Pyright using Neovim's built-in lsp client
    configuration. An lsp client basically tells Neovim how to find the 
    basedpyright language server, when to activate it (e.g. only activate
    when you open a Python file), and how to use the language server when
    working with that file type.

    You'd have to search here:
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

    vim.lsp.config("basedpyright", {
      cmd = { "basedpyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_markers = { 
          "pyproject.toml", 
          "setup.py", 
          "setup.cfg", 
          "requirements.txt", 
          "Pipfile", 
          "pyrightconfig.json", 
          ".git"
      },
      settings = {
      basedpyright = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "openFilesOnly",
          useLibraryCodeForTypes = true
        }
      }
}
    })

    4. The forth step is to enable the language server connection in
    in Neovim:

    vim.lsp.enable("basedpyright")

]]

-- NOTE: Fortunately you don't have to do all of this:

-- If you are using DezlyKit, 
-- step 1 and step 2 have already been done for you.
-- And nvim-lspconfig handles step 3 for you.
-- So all you have to do is step 4, which is to add this line
-- vim.lsp.enable("basedpyright")

--=============================================================================
-- Installation

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' }
})

--=============================================================================
-- Configuration

vim.lsp.enable({
  
    -- AI Engineering
    "basedpyright",                     -- Python (.py)
    "mojo",                             -- Mojo (.mojo)
  
    -- Backend Servers
    "gopls",                            -- Go (.go)

    -- Data formats
    "jsonls",                           -- JSON (.json)

    -- Low-Level Programming
    "clangd",                           -- C (.c), C++ (.cpp)
    "rust_analyzer",                    -- Rust (.rs)
    "zls",                              -- Zig (.zig)

    -- UX Design (Web & Mobile):
    "cssls",                            -- CSS (.css)

    "eslint",                           -- JavaScript (.js)
                                        -- JavaScript React (.jsx)
                                        -- TypeScript (.tx)
                                        -- TypeScript React (.tsx)

    "html",                             -- HTML (.html)
    "svelte",                           -- Svelte (.svelte)
  
    "tailwindcss",                      -- Any file 
                                        -- that contains Tailwind classes.

    "ts_ls",                            -- JavaScript (.js)
                                        -- JavaScript React (.jsx)
                                        -- TypeScript (.tx)
                                        -- TypeScript React (.tsx)
})

--=============================================================================
