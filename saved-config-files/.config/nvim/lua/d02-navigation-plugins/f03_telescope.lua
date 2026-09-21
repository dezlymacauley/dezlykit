-- ABOUT: Find, Filter, Preview, Pick. All lua, all the time. 

--=============================================================================

return {
    -- Installation
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-tree/nvim-web-devicons", opts = {} }
    },
    -- Configuration and activation
    config = function()
        -- Change the active selection bar background to #70008B
        vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#4E0061" })

        require("telescope").setup({})
    end
}

--=============================================================================
