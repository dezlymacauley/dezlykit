-- 4 space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current Go file
-- with `gofmt`
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- save file first
    local file = vim.fn.expand("%")
    vim.system({ "gofmt", "-w", file }, {}, function()
        vim.schedule(function()
            vim.cmd("checktime")
        end)
    end)
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
