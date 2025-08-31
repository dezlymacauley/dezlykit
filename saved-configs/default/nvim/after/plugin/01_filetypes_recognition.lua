-- NOTE: Helping Neovim recognize additional filetype

-- For direnv I want Neovim to treat `.envrc` files 
-- as regular shell scripts because that is how Neovim treats `.env` files
vim.cmd("autocmd BufRead,BufNewFile *.envrc set filetype=sh")
