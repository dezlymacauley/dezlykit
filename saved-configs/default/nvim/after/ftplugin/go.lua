-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

-- vim.keymap.set(
--     "n", 
--     "<leader>ff", 
--     function()
--         vim.cmd("silent update | silent !gofmt % | edit")
--     end, 
--     {
--       desc = "[f]ormat [f]ile",
--       buffer = true,
--       silent = true,
--     }
-- )
--
--
--
vim.keymap.set(
    "n", 
    "<leader>ff", 
    function()
        vim.cmd("silent update | silent !gofmt -w " .. vim.fn.expand("%") .. " | edit")
    end, 
    {
        desc = "[f]ormat [f]ile",
        buffer = true,
        silent = true,
    }
)
