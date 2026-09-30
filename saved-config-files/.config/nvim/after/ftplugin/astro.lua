-- 2 space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current TypeScript file
-- with `prettier`
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- save file first

    local file = vim.fn.expand("%")

    vim.system({
        "prettier",
        "--write",
        file,
    }, {}, function()
        vim.schedule(function()
            vim.cmd("checktime")
        end)
    end)
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
