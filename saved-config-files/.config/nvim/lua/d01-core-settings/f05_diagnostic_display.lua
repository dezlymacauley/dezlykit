-- This will display in-line error messages in your code

vim.diagnostic.config({
    -- I'm setting this to false because I will be using a plugin
    -- called `tiny inline diagnostics` to display virtual text
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Force clean underlines for diagnostics in Rio
local highlights = {
  DiagnosticUnderlineError = { underline = true, sp = "#FF5A59" },
  DiagnosticUnderlineWarn  = { underline = true, sp = "#D6AF64" },
  DiagnosticUnderlineInfo  = { underline = true, sp = "#89dceb" },
  DiagnosticUnderlineHint  = { underline = true, sp = "#a6e3a1" },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
