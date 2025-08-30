-- SECTION: Plugin Installation

vim.pack.add({

    -- Highlights bracket pairs and html pairs in different colours 
    -- to make it easier to keep track of nested scopes in functions
    -- { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },

-- Navigation Plugins


    -- Helps me to quickly see what buffers I have open


-- Programming Tools
	-- Syntax highlighting

	-- Text / Code Autocompletion
	-- Pick a version tag from the list below or it won't work
    -- https://github.com/Saghen/blink.cmp/tags
	{ src = "https://github.com/Saghen/blink.cmp", version = "v1.6.0" },

    -- Bracket Pair Autocompletion 
    -- When you type ( or { or [,
    -- the closing of the pair will be added for you.
    -- E.g. () {} [] `` '' ""
	{ src = "https://github.com/windwp/nvim-autopairs" }

})

-------------------------------------------------------------------------------
-- Configure installed plugins

require("blink.cmp").setup({})
require("nvim-autopairs").setup({})
-- require("rainbow-delimiters.setup").setup({})

-------------------------------------------------------------------------------
