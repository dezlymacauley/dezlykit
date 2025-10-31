-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2

-- Format with Deno

vim.keymap.set(
    "n",
    "<leader>ff",
    function()
        vim.cmd("silent update | silent !deno fmt % | edit")
    end,
    {
        desc = "[f]ormat [f]ile",
        buffer = true,
        silent = true,
    }
)
-------------------------------------------------------------------------------
-- Format with Prettier

-- vim.keymap.set(
--     "n",
--     "<leader>ff",
--     function()
--         vim.cmd("silent update | silent !prettier --write % | edit")
--     end,
--     {
--         desc = "[f]ormat [f]ile",
--         buffer = true,
--         silent = true,
--     }
-- )
-------------------------------------------------------------------------------
