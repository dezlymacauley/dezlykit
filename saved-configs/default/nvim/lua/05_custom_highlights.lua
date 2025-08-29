-- Purple status line
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#5e0073", fg = "#ffffff" })

-- Change the colour of the cursor line
vim.api.nvim_set_hl(0, 'CursorLine', { bg = "#1f0026" })

-- Sets the colour of the highlight when you yank aka copy text with `yy`
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#5e0073", fg = "#ffffff" })

-- This will highlight text when you yank aka copy it with `yy`
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 250 })
    end,
})
