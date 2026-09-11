-- 4 space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current C++ file
-- with `clang-format`
vim.keymap.set("n", "<leader>ff", function()
    vim.cmd("write") -- save file first
    local file = vim.fn.expand("%")
    vim.system({ "clang-format", "-i", file }, {}, function()
        vim.schedule(function()
            vim.cmd("checktime")
        end)
    end)
end, {
    desc = "[f]ormat [f]ile",
    buffer = true,
})
