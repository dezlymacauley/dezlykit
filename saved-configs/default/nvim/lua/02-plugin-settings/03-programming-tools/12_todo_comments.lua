-- ABOUT: 
-- Highlights your comments

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/folke/todo-comments.nvim"
    }
})

-- Dependency of todo comments
vim.pack.add({
	{ 
        src = "https://github.com/nvim-lua/plenary.nvim"
    },
})

--=============================================================================
-- Configuration

require("todo-comments").setup({
-- Show icons in the sign column on the left
-- of the line numbers
    signs = true,
-- Ensure that the signs are visible
    sign_priority = 8,
    keywords = {
        SECTION = { icon = "🚀", color = "section" },
        SUB_SECTION = { icon = "🛩️", color = "sub_section" },
        NOTE = { icon = "📚", color = "note" },
        ABOUT = { icon = "📜", color = "about" },
        AUDIT = { icon = "🕵️", color = "audit" },
        TODO = { icon = "🍨", color = "todo"}
    },
    colors = {
        note = { "#05fa78" },
        section = { "#c048f7" },
        sub_section = { "#ff004d" },
        audit = { "#00ff50" },
        about = { "#ffb000" },
        todo = { "#1ecbe1"}
    }
})

--=============================================================================
