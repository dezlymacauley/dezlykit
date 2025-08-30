-- SECTION: Load Core Settings

-- Load all .lua files from the directory:
-- ./lua/01-core-settings/
for _, file in ipairs(vim.fn.glob(
  vim.fn.stdpath("config")
    .. "/lua/01-core-settings/*.lua",
  false,
  true
)) do
  require(
    file:match("lua/(.+)%.lua$"):gsub("/", ".")
  )
end

--=============================================================================
-- SECTION: Load User Interface Plugins

-- Load all .lua files from the directory:
-- ./lua/02-plugin-settings/01-user-interface/
for _, file in ipairs(vim.fn.glob(
  vim.fn.stdpath("config")
    .. "/lua/02-plugin-settings/01-user-interface/*.lua",
  false,
  true
)) do
  require(
    file:match("lua/(.+)%.lua$"):gsub("/", ".")
  )
end

--=============================================================================
-- SECTION: Load Navigation tools

-- Load all .lua files from the directory:
-- ./lua/02-plugin-settings/02-navigation-tools/
for _, file in ipairs(vim.fn.glob(
  vim.fn.stdpath("config")
    .. "/lua/02-plugin-settings/02-navigation-tools/*.lua",
  false,
  true
)) do
  require(
    file:match("lua/(.+)%.lua$"):gsub("/", ".")
  )
end

--=============================================================================
-- SECTION: Load Programming tools

-- Load all .lua files from the directory:
-- ./lua/02-plugin-settings/03-programming-tools/
for _, file in ipairs(vim.fn.glob(
  vim.fn.stdpath("config")
    .. "/lua/02-plugin-settings/03-programming-tools/*.lua",
  false,
  true
)) do
  require(
    file:match("lua/(.+)%.lua$"):gsub("/", ".")
  )
end

--=============================================================================
