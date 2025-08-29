-- Install plugins using Neovim's native plugin manager

vim.pack.add({

-- User Interface Tools
	
	-- My favourite theme: One Dark
    { src = "https://github.com/navarasu/onedark.nvim" },

    -- Highlights bracket pairs and html pairs in different colours 
    -- to make it easier to keep track of nested scopes in functions
    { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },

-- Navigation Plugins

	{ src = "https://github.com/stevearc/oil.nvim" },

    -- Helps me to quickly see what buffers I have open
    { src = "https://github.com/akinsho/bufferline.nvim" },

    -- This is a dependency of `bufferline.nvim`
    -- It provides the filetype icons next the the name of the tab
    -- It is also used by `oil.nvim` to display icons next to the file name.
    { src = "https://github.com/nvim-tree/nvim-web-devicons"},


-- Programming Tools
	-- Syntax highlighting
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },

	-- Text / Code Autocompletion
	-- Pick a version number from this list or it won't work
	-- https://github.com/Saghen/blink.cmp/releases
	{ src = "https://github.com/Saghen/blink.cmp", version = "v1.6.0" },

    -- Bracket Pair Autocompletion 
    -- When you type ( or { or [,
    -- the closing of the pair will be added for you.
    -- E.g. () {} [] `` '' ""
	{ src = "https://github.com/windwp/nvim-autopairs" }

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
		},

        -- I've disabled the default keymaps to avoid clashes.
		use_default_keymaps = false,
		
        -- This is the only default keymap that I want to keep.
        -- I only want to Enter as a keymap
		keymaps = {
		    -- When using Oil.nvim you can enter a directory by
		    -- pressing enter
		    ["<CR>"] = "actions.select",
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
		"css", "html", "javascript", "tsx", "typescript", "svelte",

        -- General Purpose
        "bash", "csv", "lua", "toml"
	}

})

require("blink.cmp").setup({})
require("nvim-autopairs").setup({})
require("rainbow-delimiters.setup").setup({})
require("bufferline").setup({})
require("nvim-web-devicons").setup({})

-------------------------------------------------------------------------------
