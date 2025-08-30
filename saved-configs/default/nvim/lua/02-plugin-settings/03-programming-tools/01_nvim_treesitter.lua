-- ABOUT: Allows you to edit the contents of a directory like a file

--=============================================================================
-- Installation

vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }
})

--=============================================================================
-- Configuration

require("nvim-treesitter.configs").setup({
	-- I only want treesitter to install syntax highlighting for files listed,
	-- specifically in `ensure_installed`
  	auto_install = false,

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
		"go", "gomod",

		-- UX Design
		"css", "html", "javascript", "tsx", "typescript", "svelte",

        -- General Purpose
        "bash", "lua",
        
        -- Data Formats and Configuration Files
        "csv", "toml"
	}

})

--=============================================================================
