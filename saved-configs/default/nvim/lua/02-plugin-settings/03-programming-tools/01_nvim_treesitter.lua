-- ABOUT: Provides syntax highlighting for various file types

--=============================================================================
-- Installation

vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }
})

--=============================================================================
-- Configuration

require("nvim-treesitter.configs").setup({

	-- If you want to know what is the file type of any file you want support
    -- for, open the file in Neovim, press `:` 
    -- to enter command mode and use this command:
	-- `:echo &filetype`

	ensure_installed = {
		-- Low-Level Programming	
		"c", "cpp", "rust", "zig",

		-- AI Engineering
		"python",

		-- Backend Servers
		"go", "gomod", "gowork",

        -- JavaScript Frameworks
        "javascript", "tsx", "typescript", "svelte", "vue",

		-- UX Design
		"css", "html", 

        -- Scripting
        "bash", "lua",
        
        -- Data Formats and Configuration Files
        "csv", "json", "json5", "jsonc", "toml",

        -- Documentation
        "markdown", "markdown_inline"

-- JSON with comments (maintained by @WhyNotHugo)


-- markdown and markdown_inline
	},
	
    -- I only want treesitter to install syntax highlighting for files listed,
	-- specifically in `ensure_installed`
  	auto_install = false,
    highlight = {
        -- Without this line you will not get highlighting for treesitter.
        enable = true,

        -- This will disable the built-in highlighting from Neovim
        -- to ensure that only treesitter highlighting is used.
        additional_vim_regex_highlighting = false,
    },

})

--=============================================================================
