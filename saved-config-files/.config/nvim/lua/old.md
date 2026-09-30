
-- vim.lsp.config(
--     "cssls",
--     {
--         cmd = { "vscode-css-language-server", "--stdio" },
--         filetypes = { "css" },
--         settings = {
--             css = {
--                 lint = {
--                     -- This is to get rid of the unknown rule warning when there
--                     -- is a Tailwind CSS utility classes like `@theme` in a
--                     -- CSS file
--                     unknownAtRules = "ignore"
--                 }
--             }
--         }
--     }
-- )


-- SECTION: Tailwind CSS

-- vim.lsp.config("tailwindcss", {
--   settings = {
--     tailwindCSS = {
--       includeLanguages = {
--         svelte = "html",
--       },
--     },
--   },
-- })

-- vim.lsp.enable("tailwindcss")

-------------------------------------------------------------------------------



-- SECTION: JavaScript (.js), TypeScript (.tx), TypeScript React (.tsx)

-- vim.lsp.config(
--   "ts_ls",
--   {
--     cmd = { "typescript-language-server", "--stdio" },
--     filetypes = {
--       "javascript", "javascriptreact",
--       "typescript", "typescriptreact"
--     },
--   }
-- )

-- vim.lsp.config("ts_ls", {
-- 	cmd = { "typescript-language-server", "--stdio" },
-- 	init_options = {
-- 		tsserver = {
-- 			path = vim.fn.expand("./node_modules/typescript/lib/tsServerMain.js"),
-- 		},
-- 	},
-- })

-- require("lspconfig").ts_ls.setup({
-- 	init_options = {
-- 		tsserver = {
-- 			path = vim.fn.expand("./node_modules/typescript/lib/tsServerMain.js"),
-- 		},
-- 	},
-- })

-------------------------------------------------------------------------------

-- SECTION: CSS (.css)

-- vim.lsp.config("cssls", {
-- 	settings = {
-- 		css = {
-- 			lint = {
-- 				-- This silences the `unknownAtRules` warning when
-- 				-- you use Tailwind CSS specific syntax
-- 				-- like `@apply` inside a .css file
-- 				unknownAtRules = "ignore",
-- 			},
-- 		},
-- 	},
-- })
--

-------------------------------------------------------------------------------
