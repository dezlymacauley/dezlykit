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

-- cmake (CMakeLists.txt)
vim.lsp.enable("cmake")
-------------------------------------------------------------------------------

-- SECTION: go-lab

-- .go and .gomod files
vim.lsp.enable("gopls")
-------------------------------------------------------------------------------

-- SECTION: python-lab

-- .py files
vim.lsp.enable("ty")
-------------------------------------------------------------------------------

-- SECTION: ui-lab

-- .html files
vim.lsp.enable("html")

-- .css files
vim.lsp.enable("cssls")

-- .json files
vim.lsp.enable("jsonls")

-- .ts and .js files
vim.lsp.enable("vtsls")

-- svelte files
vim.lsp.enable("svelte")

-- .astro files
vim.lsp.enable("astro")

-------------------------------------------------------------------------------


-- ABOUT: LSP Settings

--[[

https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

To check if your language server and configuration are working run this:

:checkhealth vim.lsp

or you can use the shorthand:

:LspInfo

--]]

-------------------------------------------------------------------------------

-- SECTION: Bash (.sh)

vim.lsp.config("bashls", {
	cmd = { "bash-language-server", "start" },
	filetypes = { "sh" },
})

vim.lsp.enable("bashls")

-- This is to ensure that bashls does not attach to `.env` files
vim.filetype.add({
	extension = {
		env = "dotenv",
	},
})

-------------------------------------------------------------------------------

-- SECTION: Lua (.lua)

vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { "lua" },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.enable("lua_ls")

-------------------------------------------------------------------------------


-------------------------------------------------------------------------------


-- SECTION: Dockerfile and Docker compose files

-- vim.lsp.config(
--     "docker_language_server",
--     {
--         cmd = { "docker-language-server", "start", "--stdio" },
--         filetypes = { "dockerfile" },
--     }
--
-- )
--
-- vim.lsp.enable("docker_language_server")

-------------------------------------------------------------------------------


-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- SECTION: JSON (.json)

-- vim.lsp.config(
--   "jsonls",
--   {
--     cmd = { "vscode-json-language-server", "--stdio" },
--     filetypes = { "json" },
--   }
-- )


-------------------------------------------------------------------------------

-- SECTION: Svelte (.svelte)

-- vim.lsp.config("svelte", {
-- 	settings = {
-- 		css = {
-- 			lint = {
-- 				-- This silences the `unknownAtRules` warning when
-- 				-- you use Tailwind CSS specific syntax
-- 				-- like `@apply` inside the style block of a .svelte file
-- 				unknownAtRules = "ignore",
-- 			},
-- 		},
-- 	},
-- })

-------------------------------------------------------------------------------

-- SECTION: SQL

vim.lsp.config("sqruff", {
	cmd = { "sqruff", "lsp" },
	filetypes = { "sql" },
	root_markers = { ".sqruff" },
})

vim.lsp.enable("sqruff")

-------------------------------------------------------------------------------

vim.lsp.enable("zls")

-------------------------------------------------------------------------------
