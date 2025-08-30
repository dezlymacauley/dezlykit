-- 4 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

vim.keymap.set(
    "n", 
    "<leader>ff", 
    function()
    -- 1. `silent update`
    -- Saves the file before trying to format,
    -- `update` will only save the file if there are changes.
    -- `silent` will avoid saving the output to command mode.

    -- 2. `!go fmt %`
    -- Formats the current file using `!go fmt %`,

    -- 3. `edit`
    -- Reloads the current file to display the changes.

        vim.cmd("silent update | silent !go fmt % | edit")
    end, 
    {
      desc = "[f]ormat [f]ile",
      buffer = true,
      silent = true,
    }
)
