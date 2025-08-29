-- Install plugins using Neovim's native plugin manager

vim.pack.add({

        -- User Interface Tools
        { src = "https://github.com/navarasu/onedark.nvim" },

	-- Navigation Plugins
	{ src = "https://github.com/stevearc/oil.nvim" },

	-- Programming Tools
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }

	


})

-------------------------------------------------------------------------------
-- Configure installed plugins

-- The first task is to setup the default configurations 
-- of the plugin
require("onedark").setup({
	style = "deep",
	-- transparent = true
})

-- The second task is to actually set the plugin
-- as the colour scheme for the Neovim editor.
-- Most plugins that are not colour schemes will not have
-- a second task.
require("onedark").load()

require("oil").setup({

		-- When you press `dd` instead of deleting a file,
		-- that file will be moved to `.local/share/Trash`
		delete_to_trash = true,

		-- Show files and directories that start with "."
		view_options = {
		    show_hidden = true
		}

})

require("nvim-treesitter.configs").setup({
	-- I only want treesitter to install syntax highlighting for files listed,
	-- specifically in `ensure_installed`
  	auto_install = false,

	-- Here is the list of supported filetypes
	-- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
	--
	-- If you want to know what is the file type of any file, 
	-- open the file in Neovim, press `:` to enter command mode and use this command:
	-- `:echo &filetype`
	ensure_installed = {
		-- Low-Level Programming	
		"c", "cpp", "rust", "zig",

		-- AI Engineering
		"python",
		
		-- Backend Servers
		"go", "gomod",

		-- UX Design
		"css", "html", "javascript", "tsx", "typescript", "svelte"
	}

})

-------------------------------------------------------------------------------
