-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2

vim.keymap.set(
    "n", 
    "<leader>ff", 
    function()
        vim.cmd("silent update | silent !clang-format -i % | edit")
    end, 
    {
      desc = "[f]ormat [f]ile",
      buffer = true,
      silent = true,
    }
)
