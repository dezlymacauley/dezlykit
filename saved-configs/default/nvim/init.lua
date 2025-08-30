-- SECTION: Load Core Settings

-- Load ./lua/01-core-settings/01_keymap_settings.lua
require("01-core-settings.01_keymap_settings")

-- Load ./lua/01-core-settings/02_native_options.lua
require("01-core-settings.02_native_options")

-- Load ./lua/01-core-settings/03_enabled_lsps.lua
require("01-core-settings.03_enabled_lsps")

--=============================================================================
-- SECTION: Load Plugin Settings

-- Load ./lua/02-plugin-settings/general.lua
require("02-plugin-settings.general")

-- Load ./lua/02-plugin-settings/01-user-interface/02_smear_cursor.lua
require("02-plugin-settings.01-user-interface/02_smear_cursor")


--=============================================================================

require("03_custom_highlights")
require("04_custom_transparency")
require("05_custom_keymaps")

--=============================================================================
