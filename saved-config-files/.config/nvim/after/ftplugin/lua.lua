-- 2 Space indentation
vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Press `space then ff` to format the current file
-- using StyLua
vim.keymap.set("n", "<leader>ff", function()
	vim.cmd("write") -- save file first
	local file = vim.fn.expand("%")
	vim.system({ "stylua", file }, {}, function()
		vim.schedule(function()
			vim.cmd("checktime")
		end)
	end)
end, {
	desc = "Format file with StyLua",
})
