-- ABOUT: Allows me to quickly see what buffers I have open

--=============================================================================

return {
    "akinsho/bufferline.nvim",
    dependencies = {
        { "nvim-tree/nvim-web-devicons", opts = {} }
    },
    config = function()
        require("bufferline").setup({
            options = {
                themable = true,

                -- Removes vertical separator characters between tabs
                separator_style = { "", "" },

                -- Completely disables the vertical line indicator on selected tabs
                indicator = {
                    style = "none",
                },
            },
            highlights = {
                -- Tells the plugin NOT to draw background colors for tabs or empty spaces
                fill = { bg = "NONE" },
                background = { bg = "NONE" },
                buffer_visible = { bg = "NONE" },
                buffer_selected = { bg = "NONE" },

                -- Close buttons 'x'
                close_button = { bg = "NONE" },
                close_button_visible = { bg = "NONE" },
                close_button_selected = { bg = "NONE" },

                -- Separators between tabs
                separator = { fg = "NONE", bg = "NONE" },
                separator_visible = { fg = "NONE", bg = "NONE" },
                separator_selected = { fg = "NONE", bg = "NONE" },

                -- Indicators (fallback override)
                indicator_selected = { fg = "NONE", bg = "NONE" },
                indicator_visible = { fg = "NONE", bg = "NONE" },

                -- Vibrant purple dot for unsaved files
                modified = { fg = "#9B00C2", bg = "NONE" },
                modified_visible = { fg = "#9B00C2", bg = "NONE" },
                modified_selected = { fg = "#9B00C2", bg = "NONE" },
            },
        })
    end
}

--=============================================================================
